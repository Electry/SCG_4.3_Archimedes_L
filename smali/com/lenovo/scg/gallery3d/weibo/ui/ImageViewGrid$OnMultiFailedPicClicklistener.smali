.class Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$OnMultiFailedPicClicklistener;
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
    name = "OnMultiFailedPicClicklistener"
.end annotation


# instance fields
.field private mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V
    .locals 0
    .param p2, "item"    # Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .prologue
    .line 877
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$OnMultiFailedPicClicklistener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 879
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$OnMultiFailedPicClicklistener;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 880
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 884
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$OnMultiFailedPicClicklistener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->access$200(Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/lenovo/scg/common/utils/SCGUtils;->checkNetWorkIsAvaliable(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 923
    :cond_0
    return-void

    .line 888
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 889
    .local v4, "rlReloadHint":Landroid/widget/RelativeLayout;
    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 891
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$OnMultiFailedPicClicklistener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->access$200(Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f0648

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 892
    .local v5, "sHint":Ljava/lang/String;
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$OnMultiFailedPicClicklistener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->access$200(Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;)Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v5, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 894
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v1

    .line 895
    .local v1, "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$OnMultiFailedPicClicklistener;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmPicURLs()Ljava/util/List;

    move-result-object v3

    .line 896
    .local v3, "picUrls":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    .line 897
    .local v8, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v8, :cond_0

    .line 898
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;

    .line 899
    .local v9, "url":Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;
    const-string v7, ""

    .line 900
    .local v7, "sUrl":Ljava/lang/String;
    const/4 v10, 0x1

    packed-switch v10, :pswitch_data_0

    .line 914
    :goto_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 897
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 902
    :pswitch_0
    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->getThumbnail()Ljava/lang/String;

    move-result-object v7

    .line 903
    goto :goto_1

    .line 905
    :pswitch_1
    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->getBmiddle()Ljava/lang/String;

    move-result-object v7

    .line 906
    goto :goto_1

    .line 908
    :pswitch_2
    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->getLarge()Ljava/lang/String;

    move-result-object v7

    .line 909
    goto :goto_1

    .line 917
    :cond_3
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$OnMultiFailedPicClicklistener;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v6

    .line 918
    .local v6, "sName":Ljava/lang/String;
    invoke-virtual {v1, v7, v6}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getTimeBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 919
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$OnMultiFailedPicClicklistener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->access$200(Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getDefaultTimeFailedBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v10

    if-ne v0, v10, :cond_2

    .line 920
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$OnMultiFailedPicClicklistener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;

    const/4 v11, 0x0

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->loadImageFromFile(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V
    invoke-static {v10, v7, v6, v11}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->access$600(Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_2

    .line 900
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
