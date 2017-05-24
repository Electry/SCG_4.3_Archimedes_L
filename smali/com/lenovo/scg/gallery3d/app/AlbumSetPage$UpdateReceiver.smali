.class Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$UpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlbumSetPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)V
    .locals 0

    .prologue
    .line 1229
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$UpdateReceiver;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$1;

    .prologue
    .line 1229
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$UpdateReceiver;-><init>(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1234
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cloud resume download action"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1235
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$UpdateReceiver;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$2700(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1236
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1237
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$UpdateReceiver;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$2700(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1277
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 1238
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cloud finished download action"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1239
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$UpdateReceiver;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$2700(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1240
    .restart local v0    # "msg":Landroid/os/Message;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1241
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$UpdateReceiver;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$2700(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1242
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cloud pause download action"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cloud stop download action"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1244
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$UpdateReceiver;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$2700(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1245
    .restart local v0    # "msg":Landroid/os/Message;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1246
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$UpdateReceiver;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$2700(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1247
    .end local v0    # "msg":Landroid/os/Message;
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cloud update download action"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1248
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$UpdateReceiver;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$2700(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1249
    .restart local v0    # "msg":Landroid/os/Message;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1250
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$UpdateReceiver;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$2700(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1251
    .end local v0    # "msg":Landroid/os/Message;
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cloud resume upload action"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1252
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$UpdateReceiver;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$2700(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1253
    .restart local v0    # "msg":Landroid/os/Message;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1254
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$UpdateReceiver;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$2700(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1255
    .end local v0    # "msg":Landroid/os/Message;
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cloud pause upload action"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cloud stop upload action"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1257
    :cond_7
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$UpdateReceiver;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$2700(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1d

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1258
    .restart local v0    # "msg":Landroid/os/Message;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1259
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$UpdateReceiver;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$2700(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1260
    .end local v0    # "msg":Landroid/os/Message;
    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cloud finished upload action"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1261
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$UpdateReceiver;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$2700(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1262
    .restart local v0    # "msg":Landroid/os/Message;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1263
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$UpdateReceiver;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$2700(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1264
    .end local v0    # "msg":Landroid/os/Message;
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cloud update upload action"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1265
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$UpdateReceiver;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$2700(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1f

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1266
    .restart local v0    # "msg":Landroid/os/Message;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1267
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$UpdateReceiver;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$2700(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1268
    .end local v0    # "msg":Landroid/os/Message;
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cloud init login state action"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1269
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$UpdateReceiver;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$2700(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1270
    :cond_b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cloud init count photo action"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1271
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$UpdateReceiver;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$2700(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1272
    .restart local v0    # "msg":Landroid/os/Message;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1273
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$UpdateReceiver;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$2700(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1274
    .end local v0    # "msg":Landroid/os/Message;
    :cond_c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cloud refresh ui action"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1275
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$UpdateReceiver;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$2700(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
