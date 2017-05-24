.class Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$3;
.super Ljava/lang/Object;
.source "AbstractGalleryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->setContentView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0

    .prologue
    .line 727
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 732
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getTopState()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v0

    .line 733
    .local v0, "actTop":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    instance-of v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 734
    check-cast v1, Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .line 735
    .local v1, "pp":Lcom/lenovo/scg/gallery3d/app/PhotoPage;
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->playPanorama()V

    .line 737
    .end local v1    # "pp":Lcom/lenovo/scg/gallery3d/app/PhotoPage;
    :cond_0
    return-void
.end method
