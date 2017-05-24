.class Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$TimerTaskForHideFolderFilterTips;
.super Ljava/util/TimerTask;
.source "AbstractGalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimerTaskForHideFolderFilterTips"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$TimerTaskForHideFolderFilterTips;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$TimerTaskForHideFolderFilterTips;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$TimerTaskForHideFolderFilterTips$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$TimerTaskForHideFolderFilterTips$1;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$TimerTaskForHideFolderFilterTips;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 335
    return-void
.end method
