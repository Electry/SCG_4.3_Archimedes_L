.class public Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;
.super Landroid/os/Binder;
.source "ShareService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShareServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public SetSinaShareManager(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)V
    .locals 3
    .param p1, "sinaShareManager"    # Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;

    # setter for: Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->mSinaPlatformManager:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;
    invoke-static {v0, p1}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->access$002(Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    .line 122
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->mSinaPlatformManager:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->access$000(Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;)Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->setSendReport(ILcom/lenovo/scg/gallery3d/sharecenter/SendReportListener;)V

    .line 123
    return-void
.end method

.method public initShareManagers()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 131
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->mShareManagers:[Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->access$200(Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;)[Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->mSinaPlatformManager:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->access$000(Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;)Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->mTencentPlatformManager:Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->access$100(Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;)Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;

    move-result-object v2

    aput-object v2, v1, v4

    # setter for: Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->mShareManagers:[Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->access$202(Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;[Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;)[Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;

    .line 145
    :goto_0
    return-void

    .line 136
    :cond_0
    const-string v0, "lnliu"

    const-string v1, "mShareManagers != null+++++++++++++++++++++++++++++++++"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->mShareManagers:[Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->access$200(Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;)[Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->mSinaPlatformManager:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->access$000(Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;)Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    move-result-object v1

    aput-object v1, v0, v3

    .line 138
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->mShareManagers:[Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->access$200(Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;)[Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->mTencentPlatformManager:Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->access$100(Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;)Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;

    move-result-object v1

    aput-object v1, v0, v4

    goto :goto_0
.end method

.method public setTencentShareManger(Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;)V
    .locals 3
    .param p1, "tencentShareManager"    # Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;

    # setter for: Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->mTencentPlatformManager:Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;
    invoke-static {v0, p1}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->access$102(Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;)Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;

    .line 127
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->mTencentPlatformManager:Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->access$100(Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;)Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->setSendReport(ILcom/lenovo/scg/gallery3d/sharecenter/SendReportListener;)V

    .line 128
    return-void
.end method

.method public shareImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "picturePath"    # Ljava/lang/String;
    .param p3, "latitude"    # Ljava/lang/String;
    .param p4, "lontitde"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 148
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->mShareManagers:[Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->access$200(Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;)[Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 149
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->mShareManagers:[Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->access$200(Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;)[Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;->isSelected()Z

    move-result v1

    .line 150
    .local v1, "select":Z
    if-eqz v1, :cond_1

    .line 151
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;

    # operator++ for: Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->mShareResultCount:I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->access$308(Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;)I

    .line 152
    move-object v2, p1

    .line 153
    .local v2, "shareContent":Ljava/lang/String;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->mShareManagers:[Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->access$200(Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;)[Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;->getAtInfo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 154
    const-string/jumbo v3, "\u7528#\u8054\u60f3\u8d85\u7ea7\u76f8\u673a\u4e0e\u76f8\u518c#\u5206\u4eab\u4e86\u4e00\u5f20\u56fe\u7247"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 155
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->mShareManagers:[Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->access$200(Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;)[Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;->getAtInfo()Ljava/lang/String;

    move-result-object v2

    .line 160
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->mShareManagers:[Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->access$200(Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;)[Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v3, v2, p2, p4, p3}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;->shareWeibo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .end local v2    # "shareContent":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    .restart local v2    # "shareContent":Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->mShareManagers:[Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->access$200(Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;)[Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;->getAtInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 163
    .end local v1    # "select":Z
    .end local v2    # "shareContent":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->mShareResultCount:I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->access$300(Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;)I

    move-result v3

    if-nez v3, :cond_4

    .line 164
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->access$400(Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->access$400(Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0f07dc

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 168
    :goto_2
    return-void

    .line 166
    :cond_4
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->mNotificationId:I
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->access$500(Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;)I

    move-result v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->access$400(Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0f07e3

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, -0x3e8

    # invokes: Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->showNotification(ILjava/lang/String;IZ)V
    invoke-static {v3, v4, v5, v6, v7}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;->access$600(Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;ILjava/lang/String;IZ)V

    goto :goto_2
.end method
