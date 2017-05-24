.class Lcom/lenovo/scg/camera/ui/MoreSettingPopup$MoreSettingAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MoreSettingPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/ui/MoreSettingPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoreSettingAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;",
        ">;"
    }
.end annotation


# instance fields
.field mInflater:Landroid/view/LayoutInflater;

.field mOffString:Ljava/lang/String;

.field mOnString:Ljava/lang/String;

.field final synthetic this$0:Lcom/lenovo/scg/camera/ui/MoreSettingPopup;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/ui/MoreSettingPopup;)V
    .locals 4

    .prologue
    .line 64
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/MoreSettingPopup$MoreSettingAdapter;->this$0:Lcom/lenovo/scg/camera/ui/MoreSettingPopup;

    .line 65
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/ui/MoreSettingPopup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    # getter for: Lcom/lenovo/scg/camera/ui/MoreSettingPopup;->mListItem:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/lenovo/scg/camera/ui/MoreSettingPopup;->access$000(Lcom/lenovo/scg/camera/ui/MoreSettingPopup;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 66
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/MoreSettingPopup$MoreSettingAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 67
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/MoreSettingPopup$MoreSettingAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 68
    const v1, 0x7f0f04e2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/MoreSettingPopup$MoreSettingAdapter;->mOnString:Ljava/lang/String;

    .line 69
    const v1, 0x7f0f04e1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/MoreSettingPopup$MoreSettingAdapter;->mOffString:Ljava/lang/String;

    .line 70
    return-void
.end method

.method private getSettingLayoutId(Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;)I
    .locals 1
    .param p1, "pref"    # Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/ui/MoreSettingPopup$MoreSettingAdapter;->isOnOffPreference(Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const v0, 0x7f0400e7

    .line 77
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0400e8

    goto :goto_0
.end method

.method private isOnOffPreference(Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;)Z
    .locals 7
    .param p1, "pref"    # Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 81
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 82
    .local v0, "entries":[Ljava/lang/CharSequence;
    array-length v5, v0

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v3

    .line 83
    :cond_1
    aget-object v5, v0, v3

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "str1":Ljava/lang/String;
    aget-object v5, v0, v4

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "str2":Ljava/lang/String;
    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/MoreSettingPopup$MoreSettingAdapter;->mOnString:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/MoreSettingPopup$MoreSettingAdapter;->mOffString:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/MoreSettingPopup$MoreSettingAdapter;->mOffString:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/MoreSettingPopup$MoreSettingAdapter;->mOnString:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_3
    move v3, v4

    goto :goto_0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 90
    if-eqz p2, :cond_0

    .line 104
    .end local p2    # "convertView":Landroid/view/View;
    :goto_0
    return-object p2

    .line 92
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/MoreSettingPopup$MoreSettingAdapter;->this$0:Lcom/lenovo/scg/camera/ui/MoreSettingPopup;

    # getter for: Lcom/lenovo/scg/camera/ui/MoreSettingPopup;->mListItem:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lenovo/scg/camera/ui/MoreSettingPopup;->access$000(Lcom/lenovo/scg/camera/ui/MoreSettingPopup;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    .line 94
    .local v0, "pref":Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;
    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/ui/MoreSettingPopup$MoreSettingAdapter;->getSettingLayoutId(Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;)I

    move-result v2

    .line 95
    .local v2, "viewLayoutId":I
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/MoreSettingPopup$MoreSettingAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/ui/InLineSettingItem;

    .line 97
    .local v1, "view":Lcom/lenovo/scg/camera/ui/InLineSettingItem;
    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/ui/InLineSettingItem;->initialize(Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;)V

    .line 98
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/MoreSettingPopup$MoreSettingAdapter;->this$0:Lcom/lenovo/scg/camera/ui/MoreSettingPopup;

    invoke-virtual {v1, v3}, Lcom/lenovo/scg/camera/ui/InLineSettingItem;->setSettingChangedListener(Lcom/lenovo/scg/camera/ui/InLineSettingItem$Listener;)V

    .line 99
    if-ltz p1, :cond_1

    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/MoreSettingPopup$MoreSettingAdapter;->this$0:Lcom/lenovo/scg/camera/ui/MoreSettingPopup;

    # getter for: Lcom/lenovo/scg/camera/ui/MoreSettingPopup;->mEnabled:[Z
    invoke-static {v3}, Lcom/lenovo/scg/camera/ui/MoreSettingPopup;->access$100(Lcom/lenovo/scg/camera/ui/MoreSettingPopup;)[Z

    move-result-object v3

    array-length v3, v3

    if-ge p1, v3, :cond_1

    .line 100
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/MoreSettingPopup$MoreSettingAdapter;->this$0:Lcom/lenovo/scg/camera/ui/MoreSettingPopup;

    # getter for: Lcom/lenovo/scg/camera/ui/MoreSettingPopup;->mEnabled:[Z
    invoke-static {v3}, Lcom/lenovo/scg/camera/ui/MoreSettingPopup;->access$100(Lcom/lenovo/scg/camera/ui/MoreSettingPopup;)[Z

    move-result-object v3

    aget-boolean v3, v3, p1

    invoke-virtual {v1, v3}, Lcom/lenovo/scg/camera/ui/InLineSettingItem;->setEnabled(Z)V

    :goto_1
    move-object p2, v1

    .line 104
    goto :goto_0

    .line 102
    :cond_1
    const-string v3, "MoreSettingPopup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid input: enabled list length, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/MoreSettingPopup$MoreSettingAdapter;->this$0:Lcom/lenovo/scg/camera/ui/MoreSettingPopup;

    # getter for: Lcom/lenovo/scg/camera/ui/MoreSettingPopup;->mEnabled:[Z
    invoke-static {v5}, Lcom/lenovo/scg/camera/ui/MoreSettingPopup;->access$100(Lcom/lenovo/scg/camera/ui/MoreSettingPopup;)[Z

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 109
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/MoreSettingPopup$MoreSettingAdapter;->this$0:Lcom/lenovo/scg/camera/ui/MoreSettingPopup;

    # getter for: Lcom/lenovo/scg/camera/ui/MoreSettingPopup;->mEnabled:[Z
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/MoreSettingPopup;->access$100(Lcom/lenovo/scg/camera/ui/MoreSettingPopup;)[Z

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/MoreSettingPopup$MoreSettingAdapter;->this$0:Lcom/lenovo/scg/camera/ui/MoreSettingPopup;

    # getter for: Lcom/lenovo/scg/camera/ui/MoreSettingPopup;->mEnabled:[Z
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/MoreSettingPopup;->access$100(Lcom/lenovo/scg/camera/ui/MoreSettingPopup;)[Z

    move-result-object v0

    aget-boolean v0, v0, p1

    .line 112
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
