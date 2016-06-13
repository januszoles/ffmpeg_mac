#!/bin/bash

### FFMPEG build command on Mac OS X using Homebrew
### Michael Kovalenko
### Date: May 17 2016

# --------------------------------------------------------------------- #

### Homebrew is a major time-saver. I love it. Props to all the people working on that project.

# Uncomment "###Command to install FFMPEG with options" below for working installation example.

# This is just a simple reference. One can either type "sh FFMPEG_mac.sh" in a shell, 
# or just cut-and-paste command. Add and subtract options as needed. 

# Homebrew does all the heavy lifting.  

# --------------------------------------------------------------------- #

### List of options for command: "brew options ffmpeg" 
###
# $ brew options ffmpeg
# --with-dcadec
# 	Enable dcadec library
# --with-faac
# 	Build with faac support
# --with-fdk-aac
# 	Enable the Fraunhofer FDK AAC library
# --with-ffplay
# 	Enable FFplay media player
# --with-fontconfig
# 	Build with fontconfig support
# --with-freetype
# 	Build with freetype support
# --with-frei0r
# 	Build with frei0r support
# --with-libass
# 	Enable ASS/SSA subtitle format
# --with-libbluray
# 	Build with libbluray support
# --with-libbs2b
# 	Build with libbs2b support
# --with-libcaca
# 	Build with libcaca support
# --with-libsoxr
# 	Enable the soxr resample library
# --with-libssh
# 	Enable SFTP protocol via libssh
# --with-libvidstab
# 	Enable vid.stab support for video stabilization
# --with-libvorbis
# 	Build with libvorbis support
# --with-libvpx
# 	Build with libvpx support
# --with-opencore-amr
# 	Enable Opencore AMR NR/WB audio format
# --with-openh264
# 	Enable OpenH264 library
# --with-openjpeg
# 	Enable JPEG 2000 image format
# --with-openssl
# 	Enable SSL support
# --with-opus
# 	Build with opus support
# --with-rtmpdump
# 	Enable RTMP protocol
# --with-rubberband
# 	Enable rubberband library
# --with-schroedinger
# 	Enable Dirac video format
# --with-snappy
# 	Enable Snappy library
# --with-speex
# 	Build with speex support
# --with-theora
# 	Build with theora support
# --with-tools
# 	Enable additional FFmpeg tools
# --with-webp
# 	Enable using libwebp to encode WEBP images
# --with-x265
# 	Enable x265 encoder
# --with-zeromq
# 	Enable using libzeromq to receive commands sent through a libzeromq client
# --with-zimg
# 	Enable z.lib zimg library
# --without-lame
# 	Disable MP3 encoder
# --without-qtkit
# 	Disable deprecated QuickTime framework
# --without-x264
# 	Disable H.264 encoder
# --without-xvid
# 	Disable Xvid MPEG-4 video encoder
# --HEAD
# 	Install HEAD version

### Shortened options without descriptions:
# --with-dcadec
# --with-faac
# --with-fdk-aac
# --with-ffplay
# --with-fontconfig
# --with-freetype
# --with-frei0r
# --with-libass
# --with-libbluray
# --with-libbs2b
# --with-libcaca
# --with-libsoxr
# --with-libssh
# --with-libvidstab
# --with-libvorbis
# --with-libvpx
# --with-opencore-amr
# --with-openh264
# --with-openjpeg
# --with-openssl
# --with-opus
# --with-rtmpdump
# --with-rubberband
# --with-schroedinger
# --with-snappy
# --with-speex
# --with-theora
# --with-tools
# --with-webp
# --with-x265
# --with-zeromq
# --with-zimg
# --without-lame
# --without-qtkit
# --without-x264
# --without-xvid

### Reduced set for testing:

# --with-faac
# --with-fdk-aac
# --with-libass
# --with-libcaca
# --with-libsoxr
# --with-libssh
# --with-libvorbis
# --with-libvpx
# --with-opencore-amr
# --with-openh264
# --with-openjpeg
# --with-openssl
# --with-opus
# --with-rtmpdump
# --with-schroedinger
# --with-speex
# --with-theora
# --with-tools
# --with-webp
# --with-x265
# --with-zimg

### Oneline version from reduced set
# --with-faac  --with-fdk-aac  --with-libass  --with-libcaca  --with-libsoxr  --with-libssh  --with-libvorbis  --with-libvpx  --with-opencore-amr  --with-openh264  --with-openjpeg  --with-openssl  --with-opus  --with-rtmpdump  --with-schroedinger  --with-speex  --with-theora  --with-tools  --with-webp  --with-x265  --with-zimg

# --------------------------------------------------------------------- #

### Command to install FFMPEG with options
# brew install ffmpeg -v --with-faac  --with-fdk-aac  --with-libass  --with-libcaca  --with-libsoxr  --with-libssh  --with-libvorbis  --with-libvpx  --with-opencore-amr  --with-openh264  --with-openjpeg  --with-openssl  --with-opus  --with-rtmpdump  --with-schroedinger  --with-speex  --with-theora  --with-tools  --with-webp  --with-x265  --with-zimg

# Produces this configuration, handled by Homebrew:
# ./configure --prefix=/usr/local/Cellar/ffmpeg/3.0.2 --enable-shared --enable-pthreads --enable-gpl --enable-version3 --enable-hardcoded-tables --enable-avresample --cc=clang --host-cflags= --host-ldflags= --enable-opencl --enable-libx264 --enable-libmp3lame --enable-libxvid --enable-libtheora --enable-libvorbis --enable-libvpx --enable-librtmp --enable-libopencore-amrnb --enable-libopencore-amrwb --enable-libfaac --enable-libass --enable-libssh --enable-libspeex --enable-libschroedinger --enable-libfdk-aac --enable-openssl --enable-libopus --enable-libcaca --enable-libsoxr --enable-libx265 --enable-libwebp --enable-libzimg --enable-libopenh264 --enable-libopenjpeg --disable-decoder=jpeg2000 --extra-cflags=-I/usr/local/Cellar/openjpeg/1.5.2_1/include/openjpeg-1.5 --enable-nonfree --enable-vda

# --------------------------------------------------------------------- #

### Post-installation check

# $ brew info ffmpeg
# ffmpeg: stable 3.0.2 (bottled), HEAD
# Play, record, convert, and stream audio and video
# https://ffmpeg.org/
# /usr/local/Cellar/ffmpeg/3.0.2 (257 files, 49.3M) *
#   Built from source on 2016-05-17 at 13:20:11 with: --with-faac --with-fdk-aac --with-libass --with-libcaca --with-libsoxr --with-libssh --with-libvorbis --with-libvpx --with-opencore-amr --with-openh264 --with-openjpeg --with-openssl --with-opus --with-rtmpdump --with-schroedinger --with-speex --with-theora --with-tools --with-webp --with-x265 --with-zimg
# From: https://github.com/Homebrew/homebrew-core/blob/master/Formula/ffmpeg.rb
# ==> Dependencies
# Build: pkg-config ✔, texi2html ✔, yasm ✔
# Recommended: x264 ✔, lame ✔, xvid ✔
# Optional: faac ✔, fontconfig ✔, freetype ✔, theora ✔, libvorbis ✔, libvpx ✔, rtmpdump ✔, opencore-amr ✔, libass ✔, openjpeg ✔, snappy ✘, speex ✔, schroedinger ✔, fdk-aac ✔, opus ✔, frei0r ✘, libcaca ✔, libbluray ✘, libsoxr ✔, libvidstab ✘, x265 ✔, openssl ✔, libssh ✔, webp ✔, zeromq ✘, libbs2b ✘, dcadec ✘, rubberband ✘, zimg ✔, openh264 ✔
# ==> Options
# --with-dcadec
# 	Enable dcadec library
# --with-faac
# 	Build with faac support
# --with-fdk-aac
# 	Enable the Fraunhofer FDK AAC library
# --with-ffplay
# 	Enable FFplay media player
# --with-fontconfig
# 	Build with fontconfig support
# --with-freetype
# 	Build with freetype support
# --with-frei0r
# 	Build with frei0r support
# --with-libass
# 	Enable ASS/SSA subtitle format
# --with-libbluray
# 	Build with libbluray support
# --with-libbs2b
# 	Build with libbs2b support
# --with-libcaca
# 	Build with libcaca support
# --with-libsoxr
# 	Enable the soxr resample library
# --with-libssh
# 	Enable SFTP protocol via libssh
# --with-libvidstab
# 	Enable vid.stab support for video stabilization
# --with-libvorbis
# 	Build with libvorbis support
# --with-libvpx
# 	Build with libvpx support
# --with-opencore-amr
# 	Enable Opencore AMR NR/WB audio format
# --with-openh264
# 	Enable OpenH264 library
# --with-openjpeg
# 	Enable JPEG 2000 image format
# --with-openssl
# 	Enable SSL support
# --with-opus
# 	Build with opus support
# --with-rtmpdump
# 	Enable RTMP protocol
# --with-rubberband
# 	Enable rubberband library
# --with-schroedinger
# 	Enable Dirac video format
# --with-snappy
# 	Enable Snappy library
# --with-speex
# 	Build with speex support
# --with-theora
# 	Build with theora support
# --with-tools
# 	Enable additional FFmpeg tools
# --with-webp
# 	Enable using libwebp to encode WEBP images
# --with-x265
# 	Enable x265 encoder
# --with-zeromq
# 	Enable using libzeromq to receive commands sent through a libzeromq client
# --with-zimg
# 	Enable z.lib zimg library
# --without-lame
# 	Disable MP3 encoder
# --without-qtkit
# 	Disable deprecated QuickTime framework
# --without-x264
# 	Disable H.264 encoder
# --without-xvid
# 	Disable Xvid MPEG-4 video encoder
# --HEAD
# 	Install HEAD version
