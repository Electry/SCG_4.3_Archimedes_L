.class Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$TipsHandler$1;
.super Ljava/lang/Object;
.source "WeiboList.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$TipsHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$TipsHandler;

.field final synthetic val$tvHint:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$TipsHandler;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 1661
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$TipsHandler$1;->this$1:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$TipsHandler;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$TipsHandler$1;->val$tvHint:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1673
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$TipsHandler$1;->val$tvHint:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1674
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1669
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1665
    return-void
.end method
