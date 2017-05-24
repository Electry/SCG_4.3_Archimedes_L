.class Lcom/lenovo/scg/common/ui/ScrollLayout$1;
.super Ljava/lang/Object;
.source "ScrollLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/common/ui/ScrollLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/common/ui/ScrollLayout;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/common/ui/ScrollLayout;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/lenovo/scg/common/ui/ScrollLayout$1;->this$0:Lcom/lenovo/scg/common/ui/ScrollLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/ScrollLayout$1;->this$0:Lcom/lenovo/scg/common/ui/ScrollLayout;

    # getter for: Lcom/lenovo/scg/common/ui/ScrollLayout;->mTopPoints:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/lenovo/scg/common/ui/ScrollLayout;->access$000(Lcom/lenovo/scg/common/ui/ScrollLayout;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/ScrollLayout$1;->this$0:Lcom/lenovo/scg/common/ui/ScrollLayout;

    # invokes: Lcom/lenovo/scg/common/ui/ScrollLayout;->startHideAnim()V
    invoke-static {v0}, Lcom/lenovo/scg/common/ui/ScrollLayout;->access$100(Lcom/lenovo/scg/common/ui/ScrollLayout;)V

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/ScrollLayout$1;->this$0:Lcom/lenovo/scg/common/ui/ScrollLayout;

    # getter for: Lcom/lenovo/scg/common/ui/ScrollLayout;->mBottomPoints:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/lenovo/scg/common/ui/ScrollLayout;->access$200(Lcom/lenovo/scg/common/ui/ScrollLayout;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/ScrollLayout$1;->this$0:Lcom/lenovo/scg/common/ui/ScrollLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/ui/ScrollLayout;->startShowAnim()V

    goto :goto_0
.end method
