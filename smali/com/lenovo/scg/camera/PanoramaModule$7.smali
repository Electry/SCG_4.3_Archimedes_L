.class Lcom/lenovo/scg/camera/PanoramaModule$7;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/PanoramaModule;->setViews(Landroid/content/res/Resources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/PanoramaModule;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/PanoramaModule;)V
    .locals 0

    .prologue
    .line 751
    iput-object p1, p0, Lcom/lenovo/scg/camera/PanoramaModule$7;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 755
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule$7;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mPaused:Z
    invoke-static {v0}, Lcom/lenovo/scg/camera/PanoramaModule;->access$300(Lcom/lenovo/scg/camera/PanoramaModule;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule$7;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v0}, Lcom/lenovo/scg/camera/PanoramaModule;->access$1900(Lcom/lenovo/scg/camera/PanoramaModule;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-nez v0, :cond_1

    .line 757
    :cond_0
    :goto_0
    return-void

    .line 756
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule$7;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # invokes: Lcom/lenovo/scg/camera/PanoramaModule;->cancelHighResComputation()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/PanoramaModule;->access$2800(Lcom/lenovo/scg/camera/PanoramaModule;)V

    goto :goto_0
.end method
