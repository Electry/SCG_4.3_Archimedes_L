.class Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$4;
.super Ljava/lang/Object;
.source "WeiboList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->setEmptyView(Landroid/content/Context;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$emptybtn:Landroid/widget/Button;

.field final synthetic val$emptytext:Landroid/widget/TextView;

.field final synthetic val$imgHint:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/Button;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 1483
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$4;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$4;->val$emptytext:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$4;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$4;->val$emptybtn:Landroid/widget/Button;

    iput-object p5, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$4;->val$imgHint:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v3, 0x8

    .line 1488
    const-string/jumbo v0, "panhui4_WeiboList"

    const-string/jumbo v1, "onClick, get data again!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$4;->val$emptytext:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$4;->val$context:Landroid/content/Context;

    const v2, 0x7f0f064d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1490
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$4;->val$emptytext:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1491
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$4;->val$emptybtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1492
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$4;->val$imgHint:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1493
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$4;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    const-wide/16 v2, -0x1

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->loadDataFromNet(J)V
    invoke-static {v0, v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$100(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;J)V

    .line 1494
    return-void
.end method
