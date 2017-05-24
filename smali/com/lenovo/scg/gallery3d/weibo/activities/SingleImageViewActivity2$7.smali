.class Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$7;
.super Ljava/lang/Object;
.source "SingleImageViewActivity2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->setEmptyView(Landroid/content/Context;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$emptybtn:Landroid/widget/Button;

.field final synthetic val$emptytext:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 1787
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$7;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$7;->val$emptytext:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$7;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$7;->val$emptybtn:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1792
    const-string/jumbo v0, "panhui4_SingleImageViewActivity2"

    const-string/jumbo v1, "onClick, get data again!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$7;->val$emptytext:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$7;->val$context:Landroid/content/Context;

    const v2, 0x7f0f064d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1794
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$7;->val$emptybtn:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1795
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$7;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->loadData()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$2300(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)V

    .line 1796
    return-void
.end method
