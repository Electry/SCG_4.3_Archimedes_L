.class public Lcn/jingling/lib/jpegsupport/JpegSupport;
.super Ljava/lang/Object;
.source "JpegSupport.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const-string v0, "jpeg-support"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native finishReadingAndRelease()V
.end method

.method public static native finishWritingAndRelease()V
.end method

.method public static native getNextReadLine()I
.end method

.method public static native getNextWriteLine()I
.end method

.method public static native getReaderSrcImageHeight()I
.end method

.method public static native getReaderSrcImageWidth()I
.end method

.method public static native initJpegReader(Ljava/lang/String;)I
.end method

.method public static native initJpegWriter(Ljava/lang/String;III)I
.end method

.method public static native readJpegLines(I)[I
.end method

.method public static native writeJpegLines([II)I
.end method
