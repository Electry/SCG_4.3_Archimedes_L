.class Lcom/lenovo/scg/gallery3d/app/PhotoPage$8;
.super Ljava/lang/Thread;
.source "PhotoPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/PhotoPage;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

.field final synthetic val$data:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/PhotoPage;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 985
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$8;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$8;->val$data:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 987
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/lenovo/scg/camera/ActivityBase;->listContinuousShooting(Z)Ljava/lang/String;

    move-result-object v0

    .line 989
    .local v0, "path":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$8;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$200(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/lenovo/scg/gallery3d/app/PhotoPage$8$1;

    invoke-direct {v2, p0, v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage$8$1;-><init>(Lcom/lenovo/scg/gallery3d/app/PhotoPage$8;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 999
    return-void
.end method
