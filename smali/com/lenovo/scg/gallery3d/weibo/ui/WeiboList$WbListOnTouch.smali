.class public Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbListOnTouch;
.super Ljava/lang/Object;
.source "WeiboList.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$OnWbTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WbListOnTouch"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)V
    .locals 0

    .prologue
    .line 3288
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbListOnTouch;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch()V
    .locals 2

    .prologue
    .line 3292
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbListOnTouch;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupMenuView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$4000(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbListOnTouch;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupMenuView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$4000(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3294
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbListOnTouch;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupMenuView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$4000(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3296
    :cond_0
    return-void
.end method
