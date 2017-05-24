.class Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$DestroySettingThrea;
.super Ljava/lang/Thread;
.source "PhotoModuleSuperEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DestroySettingThrea"
.end annotation


# instance fields
.field private mSettingKeys:[Ljava/lang/String;

.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;)V
    .locals 1

    .prologue
    .line 851
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$DestroySettingThrea;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 853
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$DestroySettingThrea;->mSettingKeys:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 858
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 860
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$DestroySettingThrea;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    # getter for: Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->access$400(Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;)Lcom/lenovo/scg/camera/function/FunctionUIManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v2

    if-nez v2, :cond_0

    .line 861
    invoke-static {}, Lcom/lenovo/scg/camera/setting/SettingUtils;->getProSettingKeys()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$DestroySettingThrea;->mSettingKeys:[Ljava/lang/String;

    .line 865
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$DestroySettingThrea;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 867
    .local v1, "mEditor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$DestroySettingThrea;->mSettingKeys:[Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 868
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$DestroySettingThrea;->mSettingKeys:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 870
    const-string v2, "DestroySettingThrea"

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$DestroySettingThrea;->mSettingKeys:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$DestroySettingThrea;->mSettingKeys:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 868
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 863
    .end local v0    # "i":I
    .end local v1    # "mEditor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-static {}, Lcom/lenovo/scg/camera/setting/SettingUtils;->getAutoSettingKeys()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$DestroySettingThrea;->mSettingKeys:[Ljava/lang/String;

    goto :goto_0

    .line 876
    .restart local v1    # "mEditor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 877
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$DestroySettingThrea;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    # getter for: Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->afterDestorySettingHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->access$300(Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 880
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$DestroySettingThrea;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    # getter for: Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->afterDestorySettingHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->access$300(Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 882
    return-void
.end method
