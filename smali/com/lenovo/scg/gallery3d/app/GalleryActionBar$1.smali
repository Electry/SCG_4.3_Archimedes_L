.class Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$1;
.super Ljava/lang/Object;
.source "GalleryActionBar.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->showClusterDialog(Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ClusterRunner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

.field final synthetic val$actions:Ljava/util/ArrayList;

.field final synthetic val$clusterRunner:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ClusterRunner;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ClusterRunner;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$1;->this$0:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$1;->val$clusterRunner:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ClusterRunner;

    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$1;->val$actions:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 311
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$1;->this$0:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    # getter for: Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->access$600(Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 313
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$1;->val$clusterRunner:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ClusterRunner;

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$1;->val$actions:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ClusterRunner;->doCluster(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$1;->this$0:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    # getter for: Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->access$600(Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 317
    return-void

    .line 315
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$1;->this$0:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    # getter for: Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->access$600(Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v0
.end method
