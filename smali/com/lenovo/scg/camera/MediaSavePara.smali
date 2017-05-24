.class public Lcom/lenovo/scg/camera/MediaSavePara;
.super Ljava/lang/Object;
.source "MediaSavePara.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;
    }
.end annotation


# instance fields
.field public data:[B

.field public exif:Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

.field public height:I

.field public location:Landroid/location/Location;

.field public mirror:Z

.field public needCreateName:Z

.field public orientation:I

.field public orientationForMirror:I

.field public time:J

.field public trim11:Z

.field public type:Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v3, p0, Lcom/lenovo/scg/camera/MediaSavePara;->data:[B

    .line 27
    sget-object v0, Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;->JPG:Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;

    iput-object v0, p0, Lcom/lenovo/scg/camera/MediaSavePara;->type:Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/MediaSavePara;->needCreateName:Z

    .line 37
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/MediaSavePara;->trim11:Z

    .line 42
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/MediaSavePara;->mirror:Z

    .line 47
    iput-object v3, p0, Lcom/lenovo/scg/camera/MediaSavePara;->location:Landroid/location/Location;

    .line 52
    iput v1, p0, Lcom/lenovo/scg/camera/MediaSavePara;->width:I

    .line 57
    iput v1, p0, Lcom/lenovo/scg/camera/MediaSavePara;->height:I

    .line 62
    iput v2, p0, Lcom/lenovo/scg/camera/MediaSavePara;->orientation:I

    .line 72
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lenovo/scg/camera/MediaSavePara;->time:J

    .line 77
    iput v2, p0, Lcom/lenovo/scg/camera/MediaSavePara;->orientationForMirror:I

    return-void
.end method
