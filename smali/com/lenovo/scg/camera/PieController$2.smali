.class Lcom/lenovo/scg/camera/PieController$2;
.super Ljava/lang/Object;
.source "PieController.java"

# interfaces
.implements Lcom/lenovo/scg/camera/ui/PieItem$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/PieController;->makeSwitchItem(Ljava/lang/String;Z)Lcom/lenovo/scg/camera/ui/PieItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/PieController;

.field final synthetic val$fitem:Lcom/lenovo/scg/camera/ui/PieItem;

.field final synthetic val$prefKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/PieController;Ljava/lang/String;Lcom/lenovo/scg/camera/ui/PieItem;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/lenovo/scg/camera/PieController$2;->this$0:Lcom/lenovo/scg/camera/PieController;

    iput-object p2, p0, Lcom/lenovo/scg/camera/PieController$2;->val$prefKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/lenovo/scg/camera/PieController$2;->val$fitem:Lcom/lenovo/scg/camera/ui/PieItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/lenovo/scg/camera/ui/PieItem;)V
    .locals 6
    .param p1, "item"    # Lcom/lenovo/scg/camera/ui/PieItem;

    .prologue
    .line 172
    iget-object v3, p0, Lcom/lenovo/scg/camera/PieController$2;->this$0:Lcom/lenovo/scg/camera/PieController;

    iget-object v3, v3, Lcom/lenovo/scg/camera/PieController;->mPreferenceGroup:Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    iget-object v4, p0, Lcom/lenovo/scg/camera/PieController$2;->val$prefKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;

    .line 173
    .local v1, "pref":Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 174
    .local v0, "index":I
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 175
    .local v2, "values":[Ljava/lang/CharSequence;
    add-int/lit8 v3, v0, 0x1

    array-length v4, v2

    rem-int v0, v3, v4

    .line 176
    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->setValueIndex(I)V

    .line 177
    iget-object v3, p0, Lcom/lenovo/scg/camera/PieController$2;->val$fitem:Lcom/lenovo/scg/camera/ui/PieItem;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->getLabels()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/ui/PieItem;->setLabel(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v3, p0, Lcom/lenovo/scg/camera/PieController$2;->val$fitem:Lcom/lenovo/scg/camera/ui/PieItem;

    iget-object v4, p0, Lcom/lenovo/scg/camera/PieController$2;->this$0:Lcom/lenovo/scg/camera/PieController;

    iget-object v4, v4, Lcom/lenovo/scg/camera/PieController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->getLargeIconIds()[I

    move-result-object v5

    aget v5, v5, v0

    invoke-virtual {v3, v4, v5}, Lcom/lenovo/scg/camera/ui/PieItem;->setImageResource(Landroid/content/Context;I)V

    .line 179
    iget-object v3, p0, Lcom/lenovo/scg/camera/PieController$2;->this$0:Lcom/lenovo/scg/camera/PieController;

    # invokes: Lcom/lenovo/scg/camera/PieController;->reloadPreference(Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;)V
    invoke-static {v3, v1}, Lcom/lenovo/scg/camera/PieController;->access$000(Lcom/lenovo/scg/camera/PieController;Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;)V

    .line 180
    iget-object v3, p0, Lcom/lenovo/scg/camera/PieController$2;->this$0:Lcom/lenovo/scg/camera/PieController;

    invoke-virtual {v3, v1}, Lcom/lenovo/scg/camera/PieController;->onSettingChanged(Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;)V

    .line 181
    return-void
.end method
