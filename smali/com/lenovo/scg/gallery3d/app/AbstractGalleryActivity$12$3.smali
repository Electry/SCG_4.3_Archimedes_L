.class Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$12$3;
.super Ljava/lang/Object;
.source "AbstractGalleryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$12;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$12;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$12;)V
    .locals 0

    .prologue
    .line 2017
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$12$3;->this$1:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2020
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$12$3;->this$1:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$12;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$12;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "Cloud send stop download action"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2021
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$12$3;->this$1:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$12;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$12;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "Cloud send stop upload action"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2022
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->syncAutoStop()V

    .line 2023
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$12$3;->this$1:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$12;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$12;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mRemindDialog:Lcom/lenovo/scg/gallery3d/ui/RemindDialog;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$500(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->dismiss()V

    .line 2024
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$12$3;->this$1:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$12;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$12;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const-string v1, "contact.cloud.lps.lenovo.com"

    invoke-static {v0, v1}, Lcom/lenovo/lsf/account/PsAuthenServiceL;->showAccountPage(Landroid/content/Context;Ljava/lang/String;)V

    .line 2025
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$12$3;->this$1:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$12;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$12;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mLeftPanelHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$700(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2026
    return-void
.end method
