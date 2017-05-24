.class Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser$ImageEvent;
.super Ljava/lang/Object;
.source "MiniCameraExifParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageEvent"
.end annotation


# instance fields
.field stripIndex:I

.field type:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 893
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 894
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser$ImageEvent;->stripIndex:I

    .line 895
    iput p1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser$ImageEvent;->type:I

    .line 896
    return-void
.end method

.method constructor <init>(II)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "stripIndex"    # I

    .prologue
    .line 898
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 899
    iput p1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser$ImageEvent;->type:I

    .line 900
    iput p2, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifParser$ImageEvent;->stripIndex:I

    .line 901
    return-void
.end method
