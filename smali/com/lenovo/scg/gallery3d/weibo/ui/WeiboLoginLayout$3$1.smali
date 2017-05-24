.class Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$3$1;
.super Ljava/lang/Object;
.source "WeiboLoginLayout.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 206
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$3$1;->this$1:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 211
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$3$1;->this$1:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$3;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->access$700(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->weiboLogin()V

    .line 212
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 213
    return-void
.end method
