.class Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$3;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->onCloudSingleTapUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 450
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$3;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 452
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$3;->val$context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$3;->val$context:Landroid/content/Context;

    const-class v3, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 453
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$3;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mRemindDialog:Lcom/lenovo/scg/gallery3d/ui/RemindDialog;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$1200(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->dismiss()V

    .line 454
    return-void
.end method
