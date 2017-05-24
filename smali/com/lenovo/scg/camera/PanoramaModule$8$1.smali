.class Lcom/lenovo/scg/camera/PanoramaModule$8$1;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/PanoramaModule$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/scg/camera/PanoramaModule$8;

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/PanoramaModule$8;I)V
    .locals 0

    .prologue
    .line 823
    iput-object p1, p0, Lcom/lenovo/scg/camera/PanoramaModule$8$1;->this$1:Lcom/lenovo/scg/camera/PanoramaModule$8;

    iput p2, p0, Lcom/lenovo/scg/camera/PanoramaModule$8$1;->val$progress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 827
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule$8$1;->this$1:Lcom/lenovo/scg/camera/PanoramaModule$8;

    iget-object v0, v0, Lcom/lenovo/scg/camera/PanoramaModule$8;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mSavingProgressBar:Lcom/lenovo/scg/camera/PanoProgressBar;
    invoke-static {v0}, Lcom/lenovo/scg/camera/PanoramaModule;->access$3100(Lcom/lenovo/scg/camera/PanoramaModule;)Lcom/lenovo/scg/camera/PanoProgressBar;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/camera/PanoramaModule$8$1;->val$progress:I

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/PanoProgressBar;->setProgress(I)V

    .line 828
    return-void
.end method
