.class Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$11;
.super Landroid/os/Handler;
.source "AlbumSetPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)V
    .locals 0

    .prologue
    .line 1142
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$11;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1146
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 1206
    :goto_0
    return-void

    .line 1148
    :sswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1149
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "Cloud download int total key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1150
    .local v2, "total":I
    const-string v3, "Cloud download int current key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1151
    .local v1, "current":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$11;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$700(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->showDownload(Z)V

    .line 1152
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$11;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$700(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->setDownload(II)V

    goto :goto_0

    .line 1155
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "current":I
    .end local v2    # "total":I
    :sswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1156
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v3, "Cloud download int total key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1157
    .restart local v2    # "total":I
    const-string v3, "Cloud download int current key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1158
    .restart local v1    # "current":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$11;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$700(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->setDownload(II)V

    .line 1160
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "current":I
    .end local v2    # "total":I
    :sswitch_2
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$11;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$700(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->showDownload(Z)V

    goto :goto_0

    .line 1163
    :sswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1164
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v3, "Cloud download int total key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1165
    .restart local v2    # "total":I
    const-string v3, "Cloud download int current key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1166
    .restart local v1    # "current":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$11;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$700(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->showDownload(Z)V

    .line 1167
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$11;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$700(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->setDownload(II)V

    goto :goto_0

    .line 1170
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "current":I
    .end local v2    # "total":I
    :sswitch_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1171
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v3, "Cloud upload int total key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1172
    .restart local v2    # "total":I
    const-string v3, "Cloud upload int current key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1173
    .restart local v1    # "current":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$11;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$700(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->showUpload(Z)V

    .line 1174
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$11;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$700(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->setUpload(II)V

    goto/16 :goto_0

    .line 1177
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "current":I
    .end local v2    # "total":I
    :sswitch_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1178
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v3, "Cloud upload int total key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1179
    .restart local v2    # "total":I
    const-string v3, "Cloud upload int current key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1180
    .restart local v1    # "current":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$11;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$700(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->setUpload(II)V

    .line 1181
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$11;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$700(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->updateCount(I)V

    .line 1183
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "current":I
    .end local v2    # "total":I
    :sswitch_6
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$11;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$700(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->showUpload(Z)V

    goto/16 :goto_0

    .line 1186
    :sswitch_7
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1187
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v3, "Cloud upload int total key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1188
    .restart local v2    # "total":I
    const-string v3, "Cloud upload int current key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1189
    .restart local v1    # "current":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$11;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$700(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->showUpload(Z)V

    .line 1190
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$11;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$700(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->setUpload(II)V

    .line 1191
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$11;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$700(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->updateCount(I)V

    goto/16 :goto_0

    .line 1194
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "current":I
    .end local v2    # "total":I
    :sswitch_8
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$11;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$700(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->resSetLoginState()V

    goto/16 :goto_0

    .line 1197
    :sswitch_9
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1198
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v3, "Cloud count albumset key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1199
    .restart local v2    # "total":I
    const-string v3, "Cloud count photo key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1200
    .restart local v1    # "current":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$11;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$700(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->setCount(II)V

    goto/16 :goto_0

    .line 1203
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "current":I
    .end local v2    # "total":I
    :sswitch_a
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$11;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$800(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->invalidate()V

    goto/16 :goto_0

    .line 1146
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xc -> :sswitch_1
        0xd -> :sswitch_2
        0xf -> :sswitch_3
        0x1c -> :sswitch_4
        0x1d -> :sswitch_6
        0x1e -> :sswitch_5
        0x1f -> :sswitch_7
        0x23 -> :sswitch_a
        0x25 -> :sswitch_8
        0x26 -> :sswitch_9
    .end sparse-switch
.end method
