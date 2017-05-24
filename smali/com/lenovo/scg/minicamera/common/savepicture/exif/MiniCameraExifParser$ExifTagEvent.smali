.class Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser$ExifTagEvent;
.super Ljava/lang/Object;
.source "MiniCameraExifParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExifTagEvent"
.end annotation


# instance fields
.field isRequested:Z

.field tag:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;Z)V
    .locals 0
    .param p1, "tag"    # Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    .param p2, "isRequireByUser"    # Z

    .prologue
    .line 922
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 923
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser$ExifTagEvent;->tag:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    .line 924
    iput-boolean p2, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser$ExifTagEvent;->isRequested:Z

    .line 925
    return-void
.end method
