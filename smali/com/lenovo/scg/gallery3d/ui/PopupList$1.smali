.class Lcom/lenovo/scg/gallery3d/ui/PopupList$1;
.super Ljava/lang/Object;
.source "PopupList.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/PopupList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/PopupList;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/ui/PopupList;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList$1;->this$0:Lcom/lenovo/scg/gallery3d/ui/PopupList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 3

    .prologue
    .line 103
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList$1;->this$0:Lcom/lenovo/scg/gallery3d/ui/PopupList;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/PopupList;->access$000(Lcom/lenovo/scg/gallery3d/ui/PopupList;)Landroid/widget/PopupWindow;

    move-result-object v1

    if-nez v1, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList$1;->this$0:Lcom/lenovo/scg/gallery3d/ui/PopupList;

    const/4 v2, 0x0

    # setter for: Lcom/lenovo/scg/gallery3d/ui/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/PopupList;->access$002(Lcom/lenovo/scg/gallery3d/ui/PopupList;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    .line 105
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList$1;->this$0:Lcom/lenovo/scg/gallery3d/ui/PopupList;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PopupList;->mAnchorView:Landroid/view/View;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/PopupList;->access$100(Lcom/lenovo/scg/gallery3d/ui/PopupList;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 106
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList$1;->this$0:Lcom/lenovo/scg/gallery3d/ui/PopupList;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PopupList;->mOnGLobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/PopupList;->access$200(Lcom/lenovo/scg/gallery3d/ui/PopupList;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
