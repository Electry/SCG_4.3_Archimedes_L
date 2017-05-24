.class Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$TimerTaskForHideFolderFilterTips$1;
.super Ljava/lang/Object;
.source "AbstractGalleryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$TimerTaskForHideFolderFilterTips;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$TimerTaskForHideFolderFilterTips;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$TimerTaskForHideFolderFilterTips;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$TimerTaskForHideFolderFilterTips$1;->this$1:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$TimerTaskForHideFolderFilterTips;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$TimerTaskForHideFolderFilterTips$1;->this$1:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$TimerTaskForHideFolderFilterTips;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$TimerTaskForHideFolderFilterTips;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mFolderFilterTipsRl:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$000(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 333
    return-void
.end method
