.class Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WeiboLoginLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->startAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->mIsStopAnimation:Z
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->access$500(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboLoginLayout;->startAnimation(Z)V

    .line 95
    :cond_0
    return-void
.end method
