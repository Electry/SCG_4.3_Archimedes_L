.class Lcom/lenovo/scg/camera/PanoramaModule$6;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Lcom/lenovo/scg/camera/PanoProgressBar$OnDirectionChangeListener;


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
    .line 720
    iput-object p1, p0, Lcom/lenovo/scg/camera/PanoramaModule$6;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDirectionChange(I)V
    .locals 2
    .param p1, "direction"    # I

    .prologue
    .line 724
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule$6;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mCaptureState:I
    invoke-static {v0}, Lcom/lenovo/scg/camera/PanoramaModule;->access$700(Lcom/lenovo/scg/camera/PanoramaModule;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 725
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule$6;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # invokes: Lcom/lenovo/scg/camera/PanoramaModule;->showDirectionIndicators(I)V
    invoke-static {v0, p1}, Lcom/lenovo/scg/camera/PanoramaModule;->access$2700(Lcom/lenovo/scg/camera/PanoramaModule;I)V

    .line 727
    :cond_0
    return-void
.end method
