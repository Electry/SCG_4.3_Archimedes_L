.class Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$4;
.super Ljava/lang/Object;
.source "MaterialMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->getLocalData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 351
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->service:Lcom/lenovo/scg/gallery3d/materialCenter/material/service/GetLocalImgsService;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$1300(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/service/GetLocalImgsService;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mActivity:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$300(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/lenovo/scg/gallery3d/materialCenter/material/service/GetLocalImgsService;->getAllMaterialTypeList_local(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    sput-object v6, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/cache/MemoryCache;->materialTypeList_download:Ljava/util/List;

    .line 352
    sget-object v6, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/cache/MemoryCache;->materialTypeList_download:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 353
    .local v4, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 355
    sget-object v6, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/cache/MemoryCache;->materialTypeList_download:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType_local;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType_local;->getmTypeName()Ljava/lang/String;

    move-result-object v3

    .line 356
    .local v3, "sTypeName":Ljava/lang/String;
    sget-object v6, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/cache/MemoryCache;->materialTypeList_download:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType_local;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType_local;->getmTypeName()Ljava/lang/String;

    move-result-object v2

    .line 357
    .local v2, "name":Ljava/lang/String;
    sget-object v6, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/cache/MemoryCache;->materialTypeList_download:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType_local;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType_local;->getImgBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 358
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 359
    new-instance v5, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo_local;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    invoke-direct {v5, v6}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo_local;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)V

    .line 360
    .local v5, "type":Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo_local;
    iput-object v0, v5, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo_local;->bmp:Landroid/graphics/Bitmap;

    .line 361
    iput-object v3, v5, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo_local;->sCaption:Ljava/lang/String;

    .line 362
    iput-object v2, v5, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo_local;->typeName:Ljava/lang/String;

    .line 363
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mArrMaterialType_local:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$900(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mArrMaterialType_local:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$900(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v6, v4, :cond_1

    .line 364
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mArrMaterialType_local:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$900(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 353
    .end local v5    # "type":Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo_local;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 366
    .restart local v5    # "type":Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo_local;
    :cond_1
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mArrMaterialType_local:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$900(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 370
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "sTypeName":Ljava/lang/String;
    .end local v5    # "type":Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo_local;
    :cond_2
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$1000(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 371
    return-void
.end method
