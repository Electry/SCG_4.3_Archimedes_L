.class Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$30;
.super Ljava/lang/Object;
.source "AbstractGalleryActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
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
    .line 4117
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$30;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 4120
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$30;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    check-cast p2, Lcom/lenovo/scg/gallery3d/app/BatchService$LocalBinder;

    .end local p2    # "service":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/lenovo/scg/gallery3d/app/BatchService$LocalBinder;->getService()Lcom/lenovo/scg/gallery3d/app/BatchService;

    move-result-object v1

    # setter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mBatchService:Lcom/lenovo/scg/gallery3d/app/BatchService;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$2102(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/app/BatchService;)Lcom/lenovo/scg/gallery3d/app/BatchService;

    .line 4121
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 4124
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$30;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const/4 v1, 0x0

    # setter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mBatchService:Lcom/lenovo/scg/gallery3d/app/BatchService;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$2102(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/app/BatchService;)Lcom/lenovo/scg/gallery3d/app/BatchService;

    .line 4125
    return-void
.end method
