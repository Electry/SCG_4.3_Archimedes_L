.class Lcom/lenovo/scg/camera/mode/PanoramaMode$2;
.super Ljava/lang/Object;
.source "PanoramaMode.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ui/PhotoView$OnFilmModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/mode/PanoramaMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/PanoramaMode;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/mode/PanoramaMode;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode$2;->this$0:Lcom/lenovo/scg/camera/mode/PanoramaMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFilmModeChange(Z)V
    .locals 3
    .param p1, "bIsFilm"    # Z

    .prologue
    .line 192
    const-string v0, "PanoramaMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFilmModeChange bIsFilm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    if-eqz p1, :cond_1

    .line 194
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode$2;->this$0:Lcom/lenovo/scg/camera/mode/PanoramaMode;

    sget-object v1, Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;->PICTUREFILM:Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;

    # invokes: Lcom/lenovo/scg/camera/mode/PanoramaMode;->onUIStatusChange(Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->access$600(Lcom/lenovo/scg/camera/mode/PanoramaMode;Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;)V

    .line 195
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode$2;->this$0:Lcom/lenovo/scg/camera/mode/PanoramaMode;

    # getter for: Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeStatus:Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->access$300(Lcom/lenovo/scg/camera/mode/PanoramaMode;)Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;->CAPTUREING:Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;

    if-ne v0, v1, :cond_0

    .line 196
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode$2;->this$0:Lcom/lenovo/scg/camera/mode/PanoramaMode;

    const/4 v1, 0x1

    # setter for: Lcom/lenovo/scg/camera/mode/PanoramaMode;->mWaitStop:Z
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->access$702(Lcom/lenovo/scg/camera/mode/PanoramaMode;Z)Z

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode$2;->this$0:Lcom/lenovo/scg/camera/mode/PanoramaMode;

    sget-object v1, Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;->FULLCAMERA:Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;

    # invokes: Lcom/lenovo/scg/camera/mode/PanoramaMode;->onUIStatusChange(Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->access$600(Lcom/lenovo/scg/camera/mode/PanoramaMode;Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;)V

    goto :goto_0
.end method
