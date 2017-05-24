.class Lcom/tencent/weibo/demo/WeiBoAPIV1Activity$1;
.super Ljava/lang/Object;
.source "WeiBoAPIV1Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/weibo/demo/WeiBoAPIV1Activity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field response:Ljava/lang/String;

.field tAPI:Lcom/tencent/weibo/api/TAPI;

.field final synthetic this$0:Lcom/tencent/weibo/demo/WeiBoAPIV1Activity;

.field userAPI:Lcom/tencent/weibo/api/UserAPI;


# direct methods
.method constructor <init>(Lcom/tencent/weibo/demo/WeiBoAPIV1Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/weibo/demo/WeiBoAPIV1Activity$1;->this$0:Lcom/tencent/weibo/demo/WeiBoAPIV1Activity;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 101
    :goto_0
    return-void

    .line 53
    :pswitch_0
    new-instance v0, Lcom/tencent/weibo/api/UserAPI;

    const-string v1, "1.0"

    invoke-direct {v0, v1}, Lcom/tencent/weibo/api/UserAPI;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/weibo/demo/WeiBoAPIV1Activity$1;->userAPI:Lcom/tencent/weibo/api/UserAPI;

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/tencent/weibo/demo/WeiBoAPIV1Activity$1;->userAPI:Lcom/tencent/weibo/api/UserAPI;

    iget-object v1, p0, Lcom/tencent/weibo/demo/WeiBoAPIV1Activity$1;->this$0:Lcom/tencent/weibo/demo/WeiBoAPIV1Activity;

    # getter for: Lcom/tencent/weibo/demo/WeiBoAPIV1Activity;->oAuthV1:Lcom/tencent/weibo/oauthv1/OAuthV1;
    invoke-static {v1}, Lcom/tencent/weibo/demo/WeiBoAPIV1Activity;->access$0(Lcom/tencent/weibo/demo/WeiBoAPIV1Activity;)Lcom/tencent/weibo/oauthv1/OAuthV1;

    move-result-object v1

    const-string v2, "json"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/weibo/api/UserAPI;->info(Lcom/tencent/weibo/beans/OAuth;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/weibo/demo/WeiBoAPIV1Activity$1;->response:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/tencent/weibo/demo/WeiBoAPIV1Activity$1;->this$0:Lcom/tencent/weibo/demo/WeiBoAPIV1Activity;

    # getter for: Lcom/tencent/weibo/demo/WeiBoAPIV1Activity;->textResponse:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/tencent/weibo/demo/WeiBoAPIV1Activity;->access$1(Lcom/tencent/weibo/demo/WeiBoAPIV1Activity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/weibo/demo/WeiBoAPIV1Activity$1;->response:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_1
    iget-object v0, p0, Lcom/tencent/weibo/demo/WeiBoAPIV1Activity$1;->userAPI:Lcom/tencent/weibo/api/UserAPI;

    invoke-virtual {v0}, Lcom/tencent/weibo/api/UserAPI;->shutdownConnection()V

    goto :goto_0

    .line 57
    :catch_0
    move-exception v7

    .line 58
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 64
    .end local v7    # "e":Ljava/lang/Exception;
    :pswitch_1
    new-instance v0, Lcom/tencent/weibo/api/TAPI;

    const-string v1, "1.0"

    invoke-direct {v0, v1}, Lcom/tencent/weibo/api/TAPI;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/weibo/demo/WeiBoAPIV1Activity$1;->tAPI:Lcom/tencent/weibo/api/TAPI;

    .line 66
    :try_start_1
    iget-object v0, p0, Lcom/tencent/weibo/demo/WeiBoAPIV1Activity$1;->tAPI:Lcom/tencent/weibo/api/TAPI;

    iget-object v1, p0, Lcom/tencent/weibo/demo/WeiBoAPIV1Activity$1;->this$0:Lcom/tencent/weibo/demo/WeiBoAPIV1Activity;

    # getter for: Lcom/tencent/weibo/demo/WeiBoAPIV1Activity;->oAuthV1:Lcom/tencent/weibo/oauthv1/OAuthV1;
    invoke-static {v1}, Lcom/tencent/weibo/demo/WeiBoAPIV1Activity;->access$0(Lcom/tencent/weibo/demo/WeiBoAPIV1Activity;)Lcom/tencent/weibo/oauthv1/OAuthV1;

    move-result-object v1

    const-string v2, "json"

    const-string v3, "Android\u5ba2\u6237\u7aef\u6587\u5b57\u5fae\u535a1"

    const-string v4, "127.0.0.1"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/weibo/api/TAPI;->add(Lcom/tencent/weibo/beans/OAuth;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/weibo/demo/WeiBoAPIV1Activity$1;->response:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/tencent/weibo/demo/WeiBoAPIV1Activity$1;->this$0:Lcom/tencent/weibo/demo/WeiBoAPIV1Activity;

    # getter for: Lcom/tencent/weibo/demo/WeiBoAPIV1Activity;->textResponse:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/tencent/weibo/demo/WeiBoAPIV1Activity;->access$1(Lcom/tencent/weibo/demo/WeiBoAPIV1Activity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/weibo/demo/WeiBoAPIV1Activity$1;->response:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 71
    :goto_2
    iget-object v0, p0, Lcom/tencent/weibo/demo/WeiBoAPIV1Activity$1;->tAPI:Lcom/tencent/weibo/api/TAPI;

    invoke-virtual {v0}, Lcom/tencent/weibo/api/TAPI;->shutdownConnection()V

    goto/16 :goto_0

    .line 68
    :catch_1
    move-exception v7

    .line 69
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 75
    .end local v7    # "e":Ljava/lang/Exception;
    :pswitch_2
    new-instance v0, Lcom/tencent/weibo/api/TAPI;

    const-string v1, "1.0"

    invoke-direct {v0, v1}, Lcom/tencent/weibo/api/TAPI;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/weibo/demo/WeiBoAPIV1Activity$1;->tAPI:Lcom/tencent/weibo/api/TAPI;

    .line 77
    :try_start_2
    new-instance v9, Ljava/io/File;

    const-string v0, "/sdcard/qweibosdk2"

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .local v9, "fileDir":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 79
    :cond_0
    new-instance v8, Ljava/io/File;

    const-string v0, "/sdcard/qweibosdk2/logo_QWeibo.jpg"

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    .line 82
    const-class v0, Lcom/tencent/weibo/demo/WeiBoAPIV1Activity;

    const-string v1, "/res/drawable-hdpi/logo_qweibo.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    .line 83
    .local v11, "inputStream":Ljava/io/InputStream;
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 84
    .local v10, "fileOutputStream":Ljava/io/FileOutputStream;
    const/16 v0, 0x400

    new-array v6, v0, [B

    .line 86
    .local v6, "buf":[B
    :goto_3
    invoke-virtual {v11, v6}, Ljava/io/InputStream;->read([B)I

    move-result v12

    .local v12, "ins":I
    const/4 v0, -0x1

    if-ne v12, v0, :cond_2

    .line 89
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 90
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 92
    .end local v6    # "buf":[B
    .end local v10    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v11    # "inputStream":Ljava/io/InputStream;
    .end local v12    # "ins":I
    :cond_1
    const-string v5, "/sdcard/qweibosdk2/logo_QWeibo.jpg"

    .line 93
    .local v5, "picPath":Ljava/lang/String;
    iget-object v0, p0, Lcom/tencent/weibo/demo/WeiBoAPIV1Activity$1;->tAPI:Lcom/tencent/weibo/api/TAPI;

    iget-object v1, p0, Lcom/tencent/weibo/demo/WeiBoAPIV1Activity$1;->this$0:Lcom/tencent/weibo/demo/WeiBoAPIV1Activity;

    # getter for: Lcom/tencent/weibo/demo/WeiBoAPIV1Activity;->oAuthV1:Lcom/tencent/weibo/oauthv1/OAuthV1;
    invoke-static {v1}, Lcom/tencent/weibo/demo/WeiBoAPIV1Activity;->access$0(Lcom/tencent/weibo/demo/WeiBoAPIV1Activity;)Lcom/tencent/weibo/oauthv1/OAuthV1;

    move-result-object v1

    const-string v2, "json"

    const-string v3, "Android\u5ba2\u6237\u7aef\u5e26\u56fe\u7684\u6587\u5b57\u5fae\u535a1"

    const-string v4, "127.0.0.1"

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/weibo/api/TAPI;->addPic(Lcom/tencent/weibo/beans/OAuth;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/weibo/demo/WeiBoAPIV1Activity$1;->response:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/tencent/weibo/demo/WeiBoAPIV1Activity$1;->this$0:Lcom/tencent/weibo/demo/WeiBoAPIV1Activity;

    # getter for: Lcom/tencent/weibo/demo/WeiBoAPIV1Activity;->textResponse:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/tencent/weibo/demo/WeiBoAPIV1Activity;->access$1(Lcom/tencent/weibo/demo/WeiBoAPIV1Activity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/weibo/demo/WeiBoAPIV1Activity$1;->response:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 98
    .end local v5    # "picPath":Ljava/lang/String;
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "fileDir":Ljava/io/File;
    :goto_4
    iget-object v0, p0, Lcom/tencent/weibo/demo/WeiBoAPIV1Activity$1;->tAPI:Lcom/tencent/weibo/api/TAPI;

    invoke-virtual {v0}, Lcom/tencent/weibo/api/TAPI;->shutdownConnection()V

    goto/16 :goto_0

    .line 87
    .restart local v6    # "buf":[B
    .restart local v8    # "file":Ljava/io/File;
    .restart local v9    # "fileDir":Ljava/io/File;
    .restart local v10    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v11    # "inputStream":Ljava/io/InputStream;
    .restart local v12    # "ins":I
    :cond_2
    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {v10, v6, v0, v12}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 95
    .end local v6    # "buf":[B
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "fileDir":Ljava/io/File;
    .end local v10    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v11    # "inputStream":Ljava/io/InputStream;
    .end local v12    # "ins":I
    :catch_2
    move-exception v7

    .line 96
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x7f05000b
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
