.class public Lcom/lenovo/scg/photos/MultiChoiceManager;
.super Ljava/lang/Object;
.source "MultiChoiceManager.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;
.implements Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;
.implements Lcom/lenovo/scg/photos/SelectionManager$SelectedUriSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/photos/MultiChoiceManager$BulkDeleteTask;,
        Lcom/lenovo/scg/photos/MultiChoiceManager$Delegate;,
        Lcom/lenovo/scg/photos/MultiChoiceManager$Provider;
    }
.end annotation


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mContext:Landroid/content/Context;

.field private mDelegate:Lcom/lenovo/scg/photos/MultiChoiceManager$Delegate;

.field private mSelectedShareableUrisArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectionManager:Lcom/lenovo/scg/photos/SelectionManager;

.field private mShareActionProvider:Landroid/widget/ShareActionProvider;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/photos/MultiChoiceManager;->mSelectedShareableUrisArray:Ljava/util/ArrayList;

    .line 85
    iput-object p1, p0, Lcom/lenovo/scg/photos/MultiChoiceManager;->mContext:Landroid/content/Context;

    .line 86
    new-instance v0, Lcom/lenovo/scg/photos/SelectionManager;

    invoke-direct {v0, p1}, Lcom/lenovo/scg/photos/SelectionManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/lenovo/scg/photos/MultiChoiceManager;->mSelectionManager:Lcom/lenovo/scg/photos/SelectionManager;

    .line 87
    return-void
.end method

.method private getItemMimetype(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 110
    iget-object v1, p0, Lcom/lenovo/scg/photos/MultiChoiceManager;->mDelegate:Lcom/lenovo/scg/photos/MultiChoiceManager$Delegate;

    invoke-interface {v1, p1}, Lcom/lenovo/scg/photos/MultiChoiceManager$Delegate;->getItemMediaType(Ljava/lang/Object;)I

    move-result v0

    .line 111
    .local v0, "type":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 112
    const-string v1, "image/*"

    .line 116
    :goto_0
    return-object v1

    .line 113
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 114
    const-string/jumbo v1, "video/*"

    goto :goto_0

    .line 116
    :cond_1
    const-string v1, "*/*"

    goto :goto_0
.end method

.method private getPathsForSelectedItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 280
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .local v1, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/lenovo/scg/photos/MultiChoiceManager;->mDelegate:Lcom/lenovo/scg/photos/MultiChoiceManager$Delegate;

    invoke-interface {v3}, Lcom/lenovo/scg/photos/MultiChoiceManager$Delegate;->getSelectedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 282
    .local v2, "selected":Landroid/util/SparseBooleanArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 283
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 284
    iget-object v3, p0, Lcom/lenovo/scg/photos/MultiChoiceManager;->mDelegate:Lcom/lenovo/scg/photos/MultiChoiceManager$Delegate;

    invoke-interface {v3, v0}, Lcom/lenovo/scg/photos/MultiChoiceManager$Delegate;->getPathForItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 287
    :cond_1
    return-object v1
.end method

.method private singleItemAction(Ljava/lang/Object;I)V
    .locals 6
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "actionItemId"    # I

    .prologue
    const/4 v4, 0x1

    .line 238
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 239
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0, p1}, Lcom/lenovo/scg/photos/MultiChoiceManager;->getItemMimetype(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, "mime":Ljava/lang/String;
    iget-object v3, p0, Lcom/lenovo/scg/photos/MultiChoiceManager;->mDelegate:Lcom/lenovo/scg/photos/MultiChoiceManager$Delegate;

    invoke-interface {v3, p1}, Lcom/lenovo/scg/photos/MultiChoiceManager$Delegate;->getItemUri(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v2

    .line 241
    .local v2, "uri":Landroid/net/Uri;
    packed-switch p2, :pswitch_data_0

    .line 275
    :goto_0
    :pswitch_0
    return-void

    .line 243
    :pswitch_1
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "android.intent.action.EDIT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    iget-object v3, p0, Lcom/lenovo/scg/photos/MultiChoiceManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 253
    :pswitch_2
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.android.camera.action.CROP"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/photos/MultiChoiceManager;->mContext:Landroid/content/Context;

    const-class v5, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 255
    iget-object v3, p0, Lcom/lenovo/scg/photos/MultiChoiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 259
    :pswitch_3
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/photos/MultiChoiceManager;->mContext:Landroid/content/Context;

    const-class v5, Lcom/lenovo/scg/gallery3d/app/TrimVideo;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 260
    iget-object v3, p0, Lcom/lenovo/scg/photos/MultiChoiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 270
    :pswitch_4
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "android.intent.action.ATTACH_DATA"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "mimeType"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    iget-object v3, p0, Lcom/lenovo/scg/photos/MultiChoiceManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/lenovo/scg/photos/MultiChoiceManager;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0676

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 241
    nop

    :pswitch_data_0
    .packed-switch 0x7f100b19
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private updateActionItemVisibilities(Landroid/view/Menu;I)V
    .locals 10
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "supportedOperations"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 141
    const v7, 0x7f100b19

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 142
    .local v2, "editItem":Landroid/view/MenuItem;
    const v7, 0x7f100b1a

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 143
    .local v1, "deleteItem":Landroid/view/MenuItem;
    const v7, 0x7f100afb

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 144
    .local v5, "shareItem":Landroid/view/MenuItem;
    const v7, 0x7f100b1b

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 145
    .local v0, "cropItem":Landroid/view/MenuItem;
    const v7, 0x7f100b1c

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 146
    .local v6, "trimItem":Landroid/view/MenuItem;
    const v7, 0x7f100b1d

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 147
    .local v3, "muteItem":Landroid/view/MenuItem;
    const v7, 0x7f100b1e

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 149
    .local v4, "setAsItem":Landroid/view/MenuItem;
    and-int/lit16 v7, p2, 0x200

    if-lez v7, :cond_0

    move v7, v8

    :goto_0
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 150
    and-int/lit8 v7, p2, 0x1

    if-lez v7, :cond_1

    move v7, v8

    :goto_1
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 151
    and-int/lit8 v7, p2, 0x4

    if-lez v7, :cond_2

    move v7, v8

    :goto_2
    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 152
    and-int/lit8 v7, p2, 0x8

    if-lez v7, :cond_3

    move v7, v8

    :goto_3
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 153
    and-int/lit16 v7, p2, 0x800

    if-lez v7, :cond_4

    move v7, v8

    :goto_4
    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 154
    const/high16 v7, 0x10000

    and-int/2addr v7, p2

    if-lez v7, :cond_5

    move v7, v8

    :goto_5
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 155
    and-int/lit8 v7, p2, 0x20

    if-lez v7, :cond_6

    :goto_6
    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 156
    return-void

    :cond_0
    move v7, v9

    .line 149
    goto :goto_0

    :cond_1
    move v7, v9

    .line 150
    goto :goto_1

    :cond_2
    move v7, v9

    .line 151
    goto :goto_2

    :cond_3
    move v7, v9

    .line 152
    goto :goto_3

    :cond_4
    move v7, v9

    .line 153
    goto :goto_4

    :cond_5
    move v7, v9

    .line 154
    goto :goto_5

    :cond_6
    move v8, v9

    .line 155
    goto :goto_6
.end method

.method private updateSelectedTitle(Landroid/view/ActionMode;)V
    .locals 6
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 105
    iget-object v1, p0, Lcom/lenovo/scg/photos/MultiChoiceManager;->mDelegate:Lcom/lenovo/scg/photos/MultiChoiceManager$Delegate;

    invoke-interface {v1}, Lcom/lenovo/scg/photos/MultiChoiceManager$Delegate;->getSelectedItemCount()I

    move-result v0

    .line 106
    .local v0, "count":I
    iget-object v1, p0, Lcom/lenovo/scg/photos/MultiChoiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110005

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 107
    return-void
.end method


# virtual methods
.method public getSelectedItem()Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 291
    iget-object v3, p0, Lcom/lenovo/scg/photos/MultiChoiceManager;->mDelegate:Lcom/lenovo/scg/photos/MultiChoiceManager$Delegate;

    invoke-interface {v3}, Lcom/lenovo/scg/photos/MultiChoiceManager$Delegate;->getSelectedItemCount()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-object v2

    .line 294
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/photos/MultiChoiceManager;->mDelegate:Lcom/lenovo/scg/photos/MultiChoiceManager$Delegate;

    invoke-interface {v3}, Lcom/lenovo/scg/photos/MultiChoiceManager$Delegate;->getSelectedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 295
    .local v1, "selected":Landroid/util/SparseBooleanArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 296
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 297
    iget-object v2, p0, Lcom/lenovo/scg/photos/MultiChoiceManager;->mDelegate:Lcom/lenovo/scg/photos/MultiChoiceManager$Delegate;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/lenovo/scg/photos/MultiChoiceManager$Delegate;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 295
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getSelectedShareableUris()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/lenovo/scg/photos/MultiChoiceManager;->mSelectedShareableUrisArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 217
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 218
    .local v0, "actionItemId":I
    packed-switch v0, :pswitch_data_0

    move v2, v3

    .line 233
    :goto_0
    return v2

    .line 220
    :pswitch_0
    new-instance v1, Lcom/lenovo/scg/photos/MultiChoiceManager$BulkDeleteTask;

    iget-object v4, p0, Lcom/lenovo/scg/photos/MultiChoiceManager;->mDelegate:Lcom/lenovo/scg/photos/MultiChoiceManager$Delegate;

    invoke-direct {p0}, Lcom/lenovo/scg/photos/MultiChoiceManager;->getPathsForSelectedItems()Ljava/util/List;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lcom/lenovo/scg/photos/MultiChoiceManager$BulkDeleteTask;-><init>(Lcom/lenovo/scg/photos/MultiChoiceManager$Delegate;Ljava/util/List;)V

    .line 221
    .local v1, "deleteTask":Lcom/lenovo/scg/photos/MultiChoiceManager$BulkDeleteTask;
    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v4, v3}, Lcom/lenovo/scg/photos/MultiChoiceManager$BulkDeleteTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 222
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 229
    .end local v1    # "deleteTask":Lcom/lenovo/scg/photos/MultiChoiceManager$BulkDeleteTask;
    :pswitch_1
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/MultiChoiceManager;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/lenovo/scg/photos/MultiChoiceManager;->singleItemAction(Ljava/lang/Object;I)V

    .line 230
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 218
    :pswitch_data_0
    .packed-switch 0x7f100b19
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 160
    iget-object v2, p0, Lcom/lenovo/scg/photos/MultiChoiceManager;->mSelectionManager:Lcom/lenovo/scg/photos/SelectionManager;

    invoke-virtual {v2, p0}, Lcom/lenovo/scg/photos/SelectionManager;->setSelectedUriSource(Lcom/lenovo/scg/photos/SelectionManager$SelectedUriSource;)V

    .line 161
    iput-object p1, p0, Lcom/lenovo/scg/photos/MultiChoiceManager;->mActionMode:Landroid/view/ActionMode;

    .line 162
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 163
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v2, 0x7f12000c

    invoke-virtual {v0, v2, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 164
    const v2, 0x7f100afb

    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 165
    .local v1, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v2

    check-cast v2, Landroid/widget/ShareActionProvider;

    iput-object v2, p0, Lcom/lenovo/scg/photos/MultiChoiceManager;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    .line 166
    iget-object v2, p0, Lcom/lenovo/scg/photos/MultiChoiceManager;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    invoke-virtual {v2, p0}, Landroid/widget/ShareActionProvider;->setOnShareTargetSelectedListener(Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;)V

    .line 167
    invoke-direct {p0, p1}, Lcom/lenovo/scg/photos/MultiChoiceManager;->updateSelectedTitle(Landroid/view/ActionMode;)V

    .line 168
    const/4 v2, 0x1

    return v2
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v1, 0x0

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/photos/MultiChoiceManager;->mSelectedShareableUrisArray:Ljava/util/ArrayList;

    .line 177
    iget-object v0, p0, Lcom/lenovo/scg/photos/MultiChoiceManager;->mSelectionManager:Lcom/lenovo/scg/photos/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/photos/SelectionManager;->onClearSelection()V

    .line 178
    iget-object v0, p0, Lcom/lenovo/scg/photos/MultiChoiceManager;->mSelectionManager:Lcom/lenovo/scg/photos/SelectionManager;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/photos/SelectionManager;->setSelectedUriSource(Lcom/lenovo/scg/photos/SelectionManager$SelectedUriSource;)V

    .line 179
    iput-object v1, p0, Lcom/lenovo/scg/photos/MultiChoiceManager;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    .line 180
    iput-object v1, p0, Lcom/lenovo/scg/photos/MultiChoiceManager;->mActionMode:Landroid/view/ActionMode;

    .line 181
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 6
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "checked"    # Z

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/lenovo/scg/photos/MultiChoiceManager;->updateSelectedTitle(Landroid/view/ActionMode;)V

    .line 123
    iget-object v3, p0, Lcom/lenovo/scg/photos/MultiChoiceManager;->mDelegate:Lcom/lenovo/scg/photos/MultiChoiceManager$Delegate;

    invoke-interface {v3, p2}, Lcom/lenovo/scg/photos/MultiChoiceManager$Delegate;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 125
    .local v0, "item":Ljava/lang/Object;
    iget-object v3, p0, Lcom/lenovo/scg/photos/MultiChoiceManager;->mDelegate:Lcom/lenovo/scg/photos/MultiChoiceManager$Delegate;

    invoke-interface {v3, v0}, Lcom/lenovo/scg/photos/MultiChoiceManager$Delegate;->getItemSupportedOperations(Ljava/lang/Object;)I

    move-result v2

    .line 127
    .local v2, "supported":I
    and-int/lit8 v3, v2, 0x4

    if-lez v3, :cond_0

    .line 128
    iget-object v3, p0, Lcom/lenovo/scg/photos/MultiChoiceManager;->mDelegate:Lcom/lenovo/scg/photos/MultiChoiceManager$Delegate;

    invoke-interface {v3, v0}, Lcom/lenovo/scg/photos/MultiChoiceManager$Delegate;->getSubItemUrisForItem(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 129
    .local v1, "subItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz p5, :cond_1

    .line 130
    iget-object v3, p0, Lcom/lenovo/scg/photos/MultiChoiceManager;->mSelectedShareableUrisArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 136
    .end local v1    # "subItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/lenovo/scg/photos/MultiChoiceManager;->mSelectionManager:Lcom/lenovo/scg/photos/SelectionManager;

    iget-object v4, p0, Lcom/lenovo/scg/photos/MultiChoiceManager;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    iget-object v5, p0, Lcom/lenovo/scg/photos/MultiChoiceManager;->mDelegate:Lcom/lenovo/scg/photos/MultiChoiceManager$Delegate;

    invoke-interface {v5, v0}, Lcom/lenovo/scg/photos/MultiChoiceManager$Delegate;->getItemMediaType(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v3, v4, v5, v2, p5}, Lcom/lenovo/scg/photos/SelectionManager;->onItemSelectedStateChanged(Landroid/widget/ShareActionProvider;IIZ)V

    .line 137
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/photos/MultiChoiceManager;->mSelectionManager:Lcom/lenovo/scg/photos/SelectionManager;

    invoke-virtual {v4}, Lcom/lenovo/scg/photos/SelectionManager;->getSupportedOperations()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/lenovo/scg/photos/MultiChoiceManager;->updateActionItemVisibilities(Landroid/view/Menu;I)V

    .line 138
    return-void

    .line 132
    .restart local v1    # "subItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/photos/MultiChoiceManager;->mSelectedShareableUrisArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/lenovo/scg/photos/MultiChoiceManager;->updateSelectedTitle(Landroid/view/ActionMode;)V

    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public onShareTargetSelected(Landroid/widget/ShareActionProvider;Landroid/content/Intent;)Z
    .locals 1
    .param p1, "provider"    # Landroid/widget/ShareActionProvider;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/lenovo/scg/photos/MultiChoiceManager;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public setDelegate(Lcom/lenovo/scg/photos/MultiChoiceManager$Delegate;)V
    .locals 1
    .param p1, "delegate"    # Lcom/lenovo/scg/photos/MultiChoiceManager$Delegate;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lenovo/scg/photos/MultiChoiceManager;->mDelegate:Lcom/lenovo/scg/photos/MultiChoiceManager$Delegate;

    if-ne v0, p1, :cond_0

    .line 97
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/photos/MultiChoiceManager;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/lenovo/scg/photos/MultiChoiceManager;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 96
    :cond_1
    iput-object p1, p0, Lcom/lenovo/scg/photos/MultiChoiceManager;->mDelegate:Lcom/lenovo/scg/photos/MultiChoiceManager$Delegate;

    goto :goto_0
.end method
