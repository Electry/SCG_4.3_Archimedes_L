.class Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$1$1;
.super Ljava/lang/Thread;
.source "Download_online_Adapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$1;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$1;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$1$1;->this$1:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$1$1;->this$1:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$1;

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$1$1;->this$1:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$1;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->imageFileList:Ljava/util/List;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$1$1;->this$1:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$1;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$1;->val$arg0:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$1$1;->this$1:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$1;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->imageFileList:Ljava/util/List;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$1$1;->this$1:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$1;

    iget v3, v3, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$1;->val$arg0:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$1$1;->this$1:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$1;

    iget v3, v3, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$1;->val$arg0:I

    # invokes: Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->DownFile(Ljava/lang/String;Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;I)V
    invoke-static {v1, v2, v0, v3}, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->access$000(Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v0

    goto :goto_0
.end method
