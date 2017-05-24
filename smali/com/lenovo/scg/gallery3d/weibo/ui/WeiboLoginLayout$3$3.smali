.class Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$3$3;
.super Ljava/lang/Object;
.source "WeiboLoginLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$3;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$3;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$3$3;->this$1:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$3$3;->this$1:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$3;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->access$700(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->weiboLogin()V

    .line 233
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$3$3;->this$1:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$3;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mRemindDialog:Lcom/lenovo/scg/gallery3d/ui/RemindDialog;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->access$900(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;)Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->dismiss()V

    .line 234
    return-void
.end method
