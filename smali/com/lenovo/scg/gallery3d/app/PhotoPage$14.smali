.class Lcom/lenovo/scg/gallery3d/app/PhotoPage$14;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$OrientationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)V
    .locals 0

    .prologue
    .line 3539
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$14;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOrientation()I
    .locals 2

    .prologue
    .line 3543
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$14;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/lenovo/scg/gallery3d/app/OrientationManager;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$1800(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/app/OrientationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3544
    const-string v0, "hwj"

    const-string v1, "in mMenuExecutorOrientation mOrientationManager != null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3545
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$14;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/lenovo/scg/gallery3d/app/OrientationManager;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$1800(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/app/OrientationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->getCompensation()I

    move-result v0

    .line 3547
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
