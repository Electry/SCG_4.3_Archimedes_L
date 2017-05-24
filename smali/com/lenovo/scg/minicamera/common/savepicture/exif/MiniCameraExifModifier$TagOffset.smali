.class Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier$TagOffset;
.super Ljava/lang/Object;
.source "MiniCameraExifModifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TagOffset"
.end annotation


# instance fields
.field final mOffset:I

.field final mTag:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;I)V
    .locals 0
    .param p1, "tag"    # Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;
    .param p2, "offset"    # I

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier$TagOffset;->mTag:Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifTag;

    .line 60
    iput p2, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraExifModifier$TagOffset;->mOffset:I

    .line 61
    return-void
.end method
