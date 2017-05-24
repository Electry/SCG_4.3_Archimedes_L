.class Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser$IfdEvent;
.super Ljava/lang/Object;
.source "MiniCameraExifParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IfdEvent"
.end annotation


# instance fields
.field ifd:I

.field isRequested:Z


# direct methods
.method constructor <init>(IZ)V
    .locals 0
    .param p1, "ifd"    # I
    .param p2, "isInterestedIfd"    # Z

    .prologue
    .line 910
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 911
    iput p1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser$IfdEvent;->ifd:I

    .line 912
    iput-boolean p2, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser$IfdEvent;->isRequested:Z

    .line 913
    return-void
.end method
