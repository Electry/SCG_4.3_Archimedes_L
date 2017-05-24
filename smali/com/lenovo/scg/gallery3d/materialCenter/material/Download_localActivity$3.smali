.class Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$3;
.super Ljava/lang/Object;
.source "Download_localActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->GetData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 143
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;

    sget-object v3, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/cache/MemoryCache;->materialTypeList_download:Ljava/util/List;

    # setter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->materialTypeList_download:Ljava/util/List;
    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->access$502(Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;Ljava/util/List;)Ljava/util/List;

    .line 144
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->materialTypeList_download:Ljava/util/List;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->access$500(Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType_local;

    .line 145
    .local v1, "m":Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType_local;
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType_local;->getmTypeName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->mTypeName:Ljava/lang/String;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->access$200(Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType_local;->getImg_local_List()Ljava/util/List;

    move-result-object v3

    # setter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->img_local_List:Ljava/util/List;
    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->access$402(Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 149
    .end local v1    # "m":Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType_local;
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->access$600(Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 150
    return-void
.end method
