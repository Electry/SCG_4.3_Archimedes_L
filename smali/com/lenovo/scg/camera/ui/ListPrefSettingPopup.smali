.class public Lcom/lenovo/scg/camera/ui/ListPrefSettingPopup;
.super Lcom/lenovo/scg/camera/ui/AbstractSettingPopup;
.source "ListPrefSettingPopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/ui/ListPrefSettingPopup$ListPrefSettingAdapter;,
        Lcom/lenovo/scg/camera/ui/ListPrefSettingPopup$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ListPrefSettingPopup"


# instance fields
.field private mListener:Lcom/lenovo/scg/camera/ui/ListPrefSettingPopup$Listener;

.field private mPreference:Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/camera/ui/AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method


# virtual methods
.method public initialize(Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;)V
    .locals 12
    .param p1, "preference"    # Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    .prologue
    const/4 v11, 0x2

    .line 77
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/ListPrefSettingPopup;->mPreference:Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    .line 78
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/ListPrefSettingPopup;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 79
    .local v2, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/ListPrefSettingPopup;->mPreference:Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 80
    .local v7, "entries":[Ljava/lang/CharSequence;
    const/4 v9, 0x0

    .line 81
    .local v9, "iconIds":[I
    instance-of v1, p1, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/ListPrefSettingPopup;->mPreference:Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    check-cast v1, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->getImageIds()[I

    move-result-object v9

    .line 83
    if-nez v9, :cond_0

    .line 84
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/ListPrefSettingPopup;->mPreference:Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    check-cast v1, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->getLargeIconIds()[I

    move-result-object v9

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/ListPrefSettingPopup;->mTitle:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/ListPrefSettingPopup;->mPreference:Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v3, "listItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v1, v7

    if-ge v8, v1, :cond_2

    .line 93
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 94
    .local v10, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "text"

    aget-object v4, v7, v8

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    if-eqz v9, :cond_1

    const-string v1, "image"

    aget v4, v9, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_1
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 98
    .end local v10    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    new-instance v0, Lcom/lenovo/scg/camera/ui/ListPrefSettingPopup$ListPrefSettingAdapter;

    const v4, 0x7f040173

    new-array v5, v11, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v6, "text"

    aput-object v6, v5, v1

    const/4 v1, 0x1

    const-string v6, "image"

    aput-object v6, v5, v1

    new-array v6, v11, [I

    fill-array-data v6, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/scg/camera/ui/ListPrefSettingPopup$ListPrefSettingAdapter;-><init>(Lcom/lenovo/scg/camera/ui/ListPrefSettingPopup;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 100
    .local v0, "listItemAdapter":Landroid/widget/SimpleAdapter;
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/ListPrefSettingPopup;->mSettingList:Landroid/view/ViewGroup;

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 101
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/ListPrefSettingPopup;->mSettingList:Landroid/view/ViewGroup;

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 102
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/ListPrefSettingPopup;->reloadPreference()V

    .line 103
    return-void

    .line 98
    nop

    :array_0
    .array-data 4
        0x7f1003c3
        0x7f1000a9
    .end array-data
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "index"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ListPrefSettingPopup;->mPreference:Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    invoke-virtual {v0, p3}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->setValueIndex(I)V

    .line 124
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ListPrefSettingPopup;->mListener:Lcom/lenovo/scg/camera/ui/ListPrefSettingPopup$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ListPrefSettingPopup;->mListener:Lcom/lenovo/scg/camera/ui/ListPrefSettingPopup$Listener;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/ListPrefSettingPopup;->mPreference:Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/ui/ListPrefSettingPopup$Listener;->onListPrefChanged(Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;)V

    .line 125
    :cond_0
    return-void
.end method

.method public reloadPreference()V
    .locals 3

    .prologue
    .line 108
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/ListPrefSettingPopup;->mPreference:Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/ListPrefSettingPopup;->mPreference:Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 109
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/ListPrefSettingPopup;->mSettingList:Landroid/view/ViewGroup;

    check-cast v1, Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 115
    :goto_0
    return-void

    .line 112
    :cond_0
    const-string v1, "ListPrefSettingPopup"

    const-string v2, "Invalid preference value."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/ListPrefSettingPopup;->mPreference:Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->print()V

    goto :goto_0
.end method

.method public setSettingChangedListener(Lcom/lenovo/scg/camera/ui/ListPrefSettingPopup$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/camera/ui/ListPrefSettingPopup$Listener;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/ListPrefSettingPopup;->mListener:Lcom/lenovo/scg/camera/ui/ListPrefSettingPopup$Listener;

    .line 119
    return-void
.end method
