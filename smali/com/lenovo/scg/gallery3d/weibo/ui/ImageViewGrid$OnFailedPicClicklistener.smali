.class Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$OnFailedPicClicklistener;
.super Ljava/lang/Object;
.source "ImageViewGrid.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnFailedPicClicklistener"
.end annotation


# instance fields
.field private mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

.field private mName:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V
    .locals 0
    .param p2, "sUrl"    # Ljava/lang/String;
    .param p3, "sName"    # Ljava/lang/String;
    .param p4, "item"    # Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .prologue
    .line 852
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$OnFailedPicClicklistener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 853
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$OnFailedPicClicklistener;->mUrl:Ljava/lang/String;

    .line 854
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$OnFailedPicClicklistener;->mName:Ljava/lang/String;

    .line 855
    iput-object p4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$OnFailedPicClicklistener;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 856
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 860
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$OnFailedPicClicklistener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->access$200(Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/scg/common/utils/SCGUtils;->checkNetWorkIsAvaliable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 871
    :cond_0
    :goto_0
    return-void

    .line 864
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$OnFailedPicClicklistener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->access$200(Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0648

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 865
    .local v0, "sHint":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$OnFailedPicClicklistener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->access$200(Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 866
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$OnFailedPicClicklistener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$OnFailedPicClicklistener;->mUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$OnFailedPicClicklistener;->mName:Ljava/lang/String;

    const/4 v4, 0x0

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->loadImageFromFile(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V
    invoke-static {v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->access$600(Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 867
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$OnFailedPicClicklistener;->mUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$OnFailedPicClicklistener;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->clearTimeBitmap(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$OnFailedPicClicklistener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mParentAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->access$400(Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;)Landroid/widget/BaseAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 869
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$OnFailedPicClicklistener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mParentAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->access$400(Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;)Landroid/widget/BaseAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
