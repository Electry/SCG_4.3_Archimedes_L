.class Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;
.super Landroid/os/Handler;
.source "CloudBaseUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 125
    if-eqz p1, :cond_0

    .line 126
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    packed-switch v13, :pswitch_data_0

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 128
    :pswitch_0
    const/4 v6, 0x0

    .line 129
    .local v6, "isShowEmptyView":Z
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .line 130
    .local v2, "dataList":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v13, 0x3

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    if-ne v13, v14, :cond_4

    .line 131
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mPhotoAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;

    if-eqz v13, :cond_1

    .line 132
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v14, v13, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mPhotoAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Ljava/util/List;

    invoke-virtual {v14, v13}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->setDataList(Ljava/util/List;)V

    .line 133
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mPhotoAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v13, v14}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->setmClickPhoto(I)V

    .line 134
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mPhotoAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;

    invoke-virtual {v13}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->notifyDataSetChanged()V

    .line 135
    const-string v13, "HWJ"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "msg.arg2 = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    invoke-virtual {v13}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->removeLayout()V

    .line 144
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    invoke-virtual {v13}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->initmLayout()V

    .line 145
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    invoke-virtual {v13}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->show()V

    .line 146
    if-eqz v2, :cond_2

    .line 147
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_2

    .line 148
    const/4 v6, 0x1

    .line 151
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    invoke-virtual {v13, v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->showContentView(Z)V

    .line 152
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mProgressDlg:Landroid/app/ProgressDialog;

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v13}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 153
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v13}, Landroid/app/ProgressDialog;->dismiss()V

    .line 155
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    invoke-virtual {v13}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->cancelEditActionBar()V

    .line 156
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    .line 157
    .local v9, "msgData":Landroid/os/Bundle;
    if-eqz v9, :cond_0

    .line 158
    const-string/jumbo v13, "sync finish"

    invoke-virtual {v9, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 159
    .local v7, "isSyncfinish":Z
    if-eqz v7, :cond_0

    .line 160
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    if-eqz v13, :cond_0

    .line 161
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->showLoadingBar(Z)V

    goto/16 :goto_0

    .line 138
    .end local v7    # "isSyncfinish":Z
    .end local v9    # "msgData":Landroid/os/Bundle;
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;

    if-eqz v13, :cond_1

    .line 139
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v14, v13, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Ljava/util/List;

    invoke-virtual {v14, v13}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;->setDataList(Ljava/util/List;)V

    .line 140
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;

    invoke-virtual {v13}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_1

    .line 168
    .end local v2    # "dataList":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v6    # "isShowEmptyView":Z
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    if-eqz v13, :cond_0

    .line 169
    const/4 v5, 0x0

    .line 170
    .local v5, "isShow":Z
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    .line 171
    .local v4, "intShow":I
    const/4 v13, 0x1

    if-ne v13, v4, :cond_5

    .line 172
    const/4 v5, 0x1

    .line 176
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    invoke-virtual {v13, v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->showLoadingBar(Z)V

    goto/16 :goto_0

    .line 174
    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    .line 181
    .end local v4    # "intShow":I
    .end local v5    # "isShow":Z
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    .line 182
    .local v12, "sharedUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    invoke-virtual {v13, v12}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->sendMessageToUser(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 186
    .end local v12    # "sharedUrl":Ljava/lang/String;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    if-eqz v13, :cond_6

    .line 187
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    const/4 v14, 0x1

    iput-boolean v14, v13, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mIsCloudChange:Z

    .line 189
    :cond_6
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .line 190
    .restart local v2    # "dataList":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v13, 0x3

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    if-ne v13, v14, :cond_a

    .line 191
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mPhotoAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;

    if-eqz v13, :cond_7

    .line 192
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v14, v13, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mPhotoAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Ljava/util/List;

    invoke-virtual {v14, v13}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->setDataList(Ljava/util/List;)V

    .line 193
    if-eqz v2, :cond_9

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_9

    .line 194
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->showOrHideEmptyView(Z)V

    .line 210
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v13}, Landroid/app/ProgressDialog;->dismiss()V

    .line 211
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mContext:Landroid/content/Context;

    const v14, 0x7f0f0232

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 212
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-boolean v13, v13, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mIsDefaultAlbum:Z

    if-eqz v13, :cond_8

    .line 213
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mContext:Landroid/content/Context;

    const v14, 0x7f0f026f

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 215
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    invoke-virtual {v13}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->cancelEditActionBar()V

    goto/16 :goto_0

    .line 196
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    if-eqz v13, :cond_7

    .line 197
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    invoke-virtual {v13}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->switchNextPhoto()V

    .line 198
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mPhotoAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;

    invoke-virtual {v13}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->notifyDataSetChanged()V

    goto :goto_3

    .line 202
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;

    if-eqz v13, :cond_7

    .line 203
    if-eqz v2, :cond_b

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_b

    .line 204
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->showOrHideEmptyView(Z)V

    .line 206
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v14, v13, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Ljava/util/List;

    invoke-virtual {v14, v13}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;->setDataList(Ljava/util/List;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;

    invoke-virtual {v13}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_3

    .line 219
    .end local v2    # "dataList":Ljava/util/List;, "Ljava/util/List<*>;"
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;

    if-eqz v13, :cond_0

    .line 220
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v14, v13, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Ljava/util/List;

    invoke-virtual {v14, v13}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;->setDataList(Ljava/util/List;)V

    .line 221
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;

    invoke-virtual {v13}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;->notifyDataSetChanged()V

    .line 222
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v13}, Landroid/app/ProgressDialog;->dismiss()V

    .line 223
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mContext:Landroid/content/Context;

    const v14, 0x7f0f0236

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 224
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    invoke-virtual {v13}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->cancelEditActionBar()V

    goto/16 :goto_0

    .line 229
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    invoke-virtual {v13}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->removeLayout()V

    .line 230
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    const v14, 0x7f0f021b

    # invokes: Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->showDlg(I)V
    invoke-static {v13, v14}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;I)V

    goto/16 :goto_0

    .line 235
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    invoke-virtual {v13}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->removeLayout()V

    .line 237
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mContext:Landroid/content/Context;

    const v14, 0x7f0f021f

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 242
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    const v14, 0x7f0f021c

    # invokes: Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->showDlg(I)V
    invoke-static {v13, v14}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;I)V

    goto/16 :goto_0

    .line 248
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    invoke-virtual {v13}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->cancelEditActionBar()V

    .line 249
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    const v14, 0x7f0f0237

    # invokes: Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->showDlg(I)V
    invoke-static {v13, v14}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;I)V

    goto/16 :goto_0

    .line 255
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    invoke-virtual {v13}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->removeLayout()V

    .line 257
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_c

    .line 258
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mContext:Landroid/content/Context;

    const v14, 0x7f0f023a

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 259
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mProgressDlg:Landroid/app/ProgressDialog;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v13}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 260
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v13}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_0

    .line 263
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    const v14, 0x7f0f0262

    # invokes: Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->showDlg(I)V
    invoke-static {v13, v14}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;I)V

    goto/16 :goto_0

    .line 270
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    invoke-virtual {v13}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->removeLayout()V

    .line 271
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_d

    .line 272
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mContext:Landroid/content/Context;

    const v14, 0x7f0f023a

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 273
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mProgressDlg:Landroid/app/ProgressDialog;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v13}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 274
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v13}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_0

    .line 277
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mContext:Landroid/content/Context;

    const v14, 0x7f0f0262

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 284
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    invoke-virtual {v13}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->cancelEditActionBar()V

    .line 285
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    const v14, 0x7f0f0237

    # invokes: Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->showDlg(I)V
    invoke-static {v13, v14}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;I)V

    goto/16 :goto_0

    .line 290
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    invoke-virtual {v13}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->removeLayout()V

    .line 291
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    const v14, 0x7f0f0221

    # invokes: Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->showDlg(I)V
    invoke-static {v13, v14}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;I)V

    goto/16 :goto_0

    .line 296
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    invoke-virtual {v13}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->removeLayout()V

    .line 297
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    const v14, 0x7f0f023a

    # invokes: Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->showDlg(I)V
    invoke-static {v13, v14}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;I)V

    goto/16 :goto_0

    .line 301
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    const v14, 0x7f0f023b

    # invokes: Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->showDlg(I)V
    invoke-static {v13, v14}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;I)V

    goto/16 :goto_0

    .line 305
    :pswitch_f
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    .line 306
    .local v1, "cloudPhoto":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;

    if-eqz v13, :cond_0

    if-eqz v1, :cond_0

    .line 307
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->showOrHideEmptyView(Z)V

    .line 308
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 309
    .local v10, "pageType":I
    const/4 v13, 0x2

    if-ne v13, v10, :cond_f

    .line 310
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;

    check-cast v13, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;

    invoke-virtual {v13, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->addPhoto(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;)V

    .line 314
    :cond_e
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;

    invoke-virtual {v13}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 311
    :cond_f
    const/4 v13, 0x1

    if-ne v13, v10, :cond_e

    .line 312
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;

    check-cast v13, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;

    invoke-virtual {v13, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->addPhoto(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;)V

    goto :goto_4

    .line 319
    .end local v1    # "cloudPhoto":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    .end local v10    # "pageType":I
    :pswitch_10
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 320
    .restart local v10    # "pageType":I
    const/4 v13, 0x2

    if-ne v13, v10, :cond_11

    .line 321
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    .line 322
    .restart local v1    # "cloudPhoto":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    if-eqz v1, :cond_10

    .line 323
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;

    check-cast v13, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;

    invoke-virtual {v13, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->updatePhoto(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;)V

    .line 325
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;

    invoke-virtual {v13}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 327
    .end local v1    # "cloudPhoto":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    :cond_11
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudData;->getmPhotoList()Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 328
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    .line 329
    .restart local v1    # "cloudPhoto":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudData;->getmPhotoList()Ljava/util/List;

    move-result-object v8

    .line 330
    .local v8, "mPhotoList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_12
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    .line 331
    .local v11, "photo":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->getmParentId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->getmPhotoId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 332
    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmPhotoDownload(I)V

    goto :goto_5

    .line 340
    .end local v1    # "cloudPhoto":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v8    # "mPhotoList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;>;"
    .end local v10    # "pageType":I
    .end local v11    # "photo":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mContext:Landroid/content/Context;

    const v14, 0x7f0f023a

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_6
        :pswitch_b
        :pswitch_c
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_d
        :pswitch_e
        :pswitch_a
        :pswitch_f
        :pswitch_10
        :pswitch_1
        :pswitch_11
    .end packed-switch
.end method
