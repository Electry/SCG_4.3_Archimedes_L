.class Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity$1;
.super Ljava/lang/Object;
.source "CloudActivity.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->initPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

.field final synthetic val$lcpaccount:Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity$1;->val$lcpaccount:Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 2
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 219
    const-string v0, "HWJ"

    const-string/jumbo v1, "not login "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity$1;->val$lcpaccount:Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->startRelatedPage()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;)V

    .line 226
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->finish()V

    goto :goto_0
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 209
    const-string v0, "HWJ"

    const-string/jumbo v1, "on line "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->judgeSameUserId()Z
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;)Z

    .line 211
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    invoke-static {}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getGalleryLocalPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    # setter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mAccountUserId:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->access$102(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;

    .line 212
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mAccountUserId:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "user id"

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity$1;->val$lcpaccount:Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->userId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 213
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mAccountUserId:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 214
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->startRelatedPage()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;)V

    .line 215
    return-void
.end method
