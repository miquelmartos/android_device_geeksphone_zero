/*
 * Copyright (C) 2008 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
#include <hardware_legacy/vibrator.h>
#include "qemu.h"

#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <errno.h>

#define THE_DEVICE "/dev/hcit_misc"

int vibrator_exists()
{
    int fd;

    fd = open(THE_DEVICE, O_RDWR);
    if(fd < 0)
        return 0;
    close(fd);
    return 1;
}

int sendit(int timeout_ms)
{
   // int nwr, ret;
    int timer = timeout_ms;
    int res = 0;
 //   char value[20];

    int fd = open(THE_DEVICE, O_RDWR);
    if(fd < 0)
        return errno;
    
    if (timeout_ms <= 0) {
        /* HCIT_IOCTL_VIB_OFF */
        res = ioctl(fd,0x400468a3,NULL);
    } else {
        /* HCIT_IOCTL_VIB_ON */
        res = ioctl(fd,0x400468a2,&timer);
    }

//    nwr = sprintf(value, "%d\n", timeout_ms);
//    ret = write(fd, value, nwr);
    close(fd);

//    return (ret == nwr) ? 0 : -1;
    return ( res ? -1 : 0 );
}
