.class Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$6;
.super Ljava/lang/Object;
.source "PhotographerWorkAcitivty.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->resetSortViewAndGridViewBySort(Ljava/lang/String;Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGridView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)V
    .locals 0

    .prologue
    .line 869
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$6;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 12
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 873
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$6;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # invokes: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->isClickable()Z
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$2100(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v10, p2

    .line 874
    check-cast v10, Landroid/widget/ImageView;

    .line 875
    .local v10, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v10}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 876
    .local v8, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$6;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # invokes: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->showSinglePhotoLayout(Landroid/graphics/drawable/Drawable;)V
    invoke-static {v1, v8}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$2200(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;Landroid/graphics/drawable/Drawable;)V

    move-object v9, p1

    .line 877
    check-cast v9, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGridView;

    .line 878
    .local v9, "gridView":Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGridView;
    if-eqz p1, :cond_0

    .line 879
    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;

    .line 880
    .local v0, "adapter":Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;
    if-eqz v0, :cond_0

    .line 881
    invoke-virtual {v0, p3}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;->getPhotoInfo(I)Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;

    move-result-object v11

    .line 882
    .local v11, "info":Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;
    const-string v1, "jiaxiaowei"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "click  info:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    if-eqz v11, :cond_0

    .line 884
    invoke-virtual {v11}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->getLargePhotoUrl()Ljava/lang/String;

    move-result-object v2

    .line 885
    .local v2, "largePhotoUrl":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->getSort()Ljava/lang/String;

    move-result-object v4

    .line 886
    .local v4, "sort":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->getUpdateTime()Ljava/lang/String;

    move-result-object v5

    .line 887
    .local v5, "updateTime":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$6;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mSinglePhotoLayout:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->access$1300(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->setSinglePhotoPageTitle(Ljava/lang/String;)V

    .line 888
    const-string v1, "jiaxiaowei"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "largePhotoUrl:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ",sort:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    if-eqz v2, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v4, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 891
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$6;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    const/4 v3, 0x0

    invoke-virtual {v11}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->getId()J

    move-result-wide v6

    invoke-virtual/range {v1 .. v7}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->loadPhotoGrapherLargePhoto(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V

    .line 897
    .end local v0    # "adapter":Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;
    .end local v2    # "largePhotoUrl":Ljava/lang/String;
    .end local v4    # "sort":Ljava/lang/String;
    .end local v5    # "updateTime":Ljava/lang/String;
    .end local v8    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v9    # "gridView":Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGridView;
    .end local v10    # "imageView":Landroid/widget/ImageView;
    .end local v11    # "info":Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;
    :cond_0
    return-void
.end method
