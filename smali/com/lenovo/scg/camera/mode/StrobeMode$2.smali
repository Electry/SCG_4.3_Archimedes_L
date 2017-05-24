.class Lcom/lenovo/scg/camera/mode/StrobeMode$2;
.super Ljava/lang/Object;
.source "StrobeMode.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ui/PhotoView$OnFilmModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/mode/StrobeMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/mode/StrobeMode;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$2;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFilmModeChange(Z)V
    .locals 3
    .param p1, "bIsFilm"    # Z

    .prologue
    .line 229
    const-string v0, "StrobeMode"

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

    .line 230
    if-eqz p1, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$2;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mStatus:Lcom/lenovo/scg/camera/mode/StrobeMode$Status;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$1400(Lcom/lenovo/scg/camera/mode/StrobeMode;)Lcom/lenovo/scg/camera/mode/StrobeMode$Status;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/camera/mode/StrobeMode$Status;->SELECT:Lcom/lenovo/scg/camera/mode/StrobeMode$Status;

    if-ne v0, v1, :cond_0

    .line 234
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$2;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$1100(Lcom/lenovo/scg/camera/mode/StrobeMode;)Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;->clearUIScreen([I)V

    goto :goto_0
.end method
