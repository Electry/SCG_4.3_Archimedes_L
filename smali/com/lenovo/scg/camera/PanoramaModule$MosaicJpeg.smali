.class Lcom/lenovo/scg/camera/PanoramaModule$MosaicJpeg;
.super Ljava/lang/Object;
.source "PanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/PanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MosaicJpeg"
.end annotation


# instance fields
.field public final data:[B

.field public final height:I

.field public final isValid:Z

.field final synthetic this$0:Lcom/lenovo/scg/camera/PanoramaModule;

.field public final width:I


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/PanoramaModule;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 254
    iput-object p1, p0, Lcom/lenovo/scg/camera/PanoramaModule$MosaicJpeg;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule$MosaicJpeg;->data:[B

    .line 256
    iput v1, p0, Lcom/lenovo/scg/camera/PanoramaModule$MosaicJpeg;->width:I

    .line 257
    iput v1, p0, Lcom/lenovo/scg/camera/PanoramaModule$MosaicJpeg;->height:I

    .line 258
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/PanoramaModule$MosaicJpeg;->isValid:Z

    .line 259
    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/camera/PanoramaModule;[BII)V
    .locals 1
    .param p2, "data"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 247
    iput-object p1, p0, Lcom/lenovo/scg/camera/PanoramaModule$MosaicJpeg;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput-object p2, p0, Lcom/lenovo/scg/camera/PanoramaModule$MosaicJpeg;->data:[B

    .line 249
    iput p3, p0, Lcom/lenovo/scg/camera/PanoramaModule$MosaicJpeg;->width:I

    .line 250
    iput p4, p0, Lcom/lenovo/scg/camera/PanoramaModule$MosaicJpeg;->height:I

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/PanoramaModule$MosaicJpeg;->isValid:Z

    .line 252
    return-void
.end method
