.class public Lcom/lenovo/scg/photos/SelectionManager;
.super Ljava/lang/Object;
.source "SelectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/photos/SelectionManager$SelectedUriSource;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCachedShareableUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mSelectedCroppableCount:I

.field private mSelectedDeletableCount:I

.field private mSelectedEditableCount:I

.field private mSelectedMuteableCount:I

.field private mSelectedSetableCount:I

.field private mSelectedShareableCount:I

.field private mSelectedShareableImageCount:I

.field private mSelectedShareableVideoCount:I

.field private mSelectedTotalCount:I

.field private mSelectedTrimmableCount:I

.field private mShareIntent:Landroid/content/Intent;

.field private mUriSource:Lcom/lenovo/scg/photos/SelectionManager$SelectedUriSource;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/photos/SelectionManager;->mShareIntent:Landroid/content/Intent;

    .line 69
    iput v1, p0, Lcom/lenovo/scg/photos/SelectionManager;->mSelectedTotalCount:I

    .line 71
    iput v1, p0, Lcom/lenovo/scg/photos/SelectionManager;->mSelectedShareableCount:I

    .line 73
    iput v1, p0, Lcom/lenovo/scg/photos/SelectionManager;->mSelectedShareableImageCount:I

    .line 75
    iput v1, p0, Lcom/lenovo/scg/photos/SelectionManager;->mSelectedShareableVideoCount:I

    .line 77
    iput v1, p0, Lcom/lenovo/scg/photos/SelectionManager;->mSelectedDeletableCount:I

    .line 79
    iput v1, p0, Lcom/lenovo/scg/photos/SelectionManager;->mSelectedEditableCount:I

    .line 81
    iput v1, p0, Lcom/lenovo/scg/photos/SelectionManager;->mSelectedCroppableCount:I

    .line 83
    iput v1, p0, Lcom/lenovo/scg/photos/SelectionManager;->mSelectedSetableCount:I

    .line 85
    iput v1, p0, Lcom/lenovo/scg/photos/SelectionManager;->mSelectedTrimmableCount:I

    .line 87
    iput v1, p0, Lcom/lenovo/scg/photos/SelectionManager;->mSelectedMuteableCount:I

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/photos/SelectionManager;->mCachedShareableUris:Ljava/util/ArrayList;

    .line 50
    iput-object p1, p0, Lcom/lenovo/scg/photos/SelectionManager;->mActivity:Landroid/app/Activity;

    .line 51
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->AT_LEAST_16:Z

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/lenovo/scg/photos/SelectionManager;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/photos/SelectionManager;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/photos/SelectionManager;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    new-instance v1, Lcom/lenovo/scg/photos/SelectionManager$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/photos/SelectionManager$1;-><init>(Lcom/lenovo/scg/photos/SelectionManager;)V

    iget-object v2, p0, Lcom/lenovo/scg/photos/SelectionManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Landroid/nfc/NfcAdapter;->setBeamPushUrisCallback(Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;Landroid/app/Activity;)V

    .line 63
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/photos/SelectionManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/photos/SelectionManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/photos/SelectionManager;->mCachedShareableUris:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public getSupportedOperations()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 152
    iget v1, p0, Lcom/lenovo/scg/photos/SelectionManager;->mSelectedTotalCount:I

    if-nez v1, :cond_1

    .line 153
    const/4 v0, 0x0

    .line 179
    :cond_0
    :goto_0
    return v0

    .line 155
    :cond_1
    const/4 v0, 0x0

    .line 156
    .local v0, "supported":I
    iget v1, p0, Lcom/lenovo/scg/photos/SelectionManager;->mSelectedTotalCount:I

    if-ne v1, v2, :cond_6

    .line 157
    iget v1, p0, Lcom/lenovo/scg/photos/SelectionManager;->mSelectedCroppableCount:I

    if-ne v1, v2, :cond_2

    .line 158
    or-int/lit8 v0, v0, 0x8

    .line 160
    :cond_2
    iget v1, p0, Lcom/lenovo/scg/photos/SelectionManager;->mSelectedEditableCount:I

    if-ne v1, v2, :cond_3

    .line 161
    or-int/lit16 v0, v0, 0x200

    .line 163
    :cond_3
    iget v1, p0, Lcom/lenovo/scg/photos/SelectionManager;->mSelectedSetableCount:I

    if-ne v1, v2, :cond_4

    .line 164
    or-int/lit8 v0, v0, 0x20

    .line 166
    :cond_4
    iget v1, p0, Lcom/lenovo/scg/photos/SelectionManager;->mSelectedTrimmableCount:I

    if-ne v1, v2, :cond_5

    .line 167
    or-int/lit16 v0, v0, 0x800

    .line 169
    :cond_5
    iget v1, p0, Lcom/lenovo/scg/photos/SelectionManager;->mSelectedMuteableCount:I

    if-ne v1, v2, :cond_6

    .line 170
    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    .line 173
    :cond_6
    iget v1, p0, Lcom/lenovo/scg/photos/SelectionManager;->mSelectedDeletableCount:I

    iget v2, p0, Lcom/lenovo/scg/photos/SelectionManager;->mSelectedTotalCount:I

    if-ne v1, v2, :cond_7

    .line 174
    or-int/lit8 v0, v0, 0x1

    .line 176
    :cond_7
    iget v1, p0, Lcom/lenovo/scg/photos/SelectionManager;->mSelectedShareableCount:I

    if-lez v1, :cond_0

    .line 177
    or-int/lit8 v0, v0, 0x4

    goto :goto_0
.end method

.method public onClearSelection()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 183
    iput v0, p0, Lcom/lenovo/scg/photos/SelectionManager;->mSelectedTotalCount:I

    .line 184
    iput v0, p0, Lcom/lenovo/scg/photos/SelectionManager;->mSelectedShareableCount:I

    .line 185
    iput v0, p0, Lcom/lenovo/scg/photos/SelectionManager;->mSelectedShareableImageCount:I

    .line 186
    iput v0, p0, Lcom/lenovo/scg/photos/SelectionManager;->mSelectedShareableVideoCount:I

    .line 187
    iput v0, p0, Lcom/lenovo/scg/photos/SelectionManager;->mSelectedDeletableCount:I

    .line 188
    iput v0, p0, Lcom/lenovo/scg/photos/SelectionManager;->mSelectedEditableCount:I

    .line 189
    iput v0, p0, Lcom/lenovo/scg/photos/SelectionManager;->mSelectedCroppableCount:I

    .line 190
    iput v0, p0, Lcom/lenovo/scg/photos/SelectionManager;->mSelectedSetableCount:I

    .line 191
    iput v0, p0, Lcom/lenovo/scg/photos/SelectionManager;->mSelectedTrimmableCount:I

    .line 192
    iput v0, p0, Lcom/lenovo/scg/photos/SelectionManager;->mSelectedMuteableCount:I

    .line 193
    iput-object v2, p0, Lcom/lenovo/scg/photos/SelectionManager;->mCachedShareableUris:Ljava/util/ArrayList;

    .line 194
    iget-object v0, p0, Lcom/lenovo/scg/photos/SelectionManager;->mShareIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/lenovo/scg/photos/SelectionManager;->mShareIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    return-void
.end method

.method public onItemSelectedStateChanged(Landroid/widget/ShareActionProvider;IIZ)V
    .locals 5
    .param p1, "share"    # Landroid/widget/ShareActionProvider;
    .param p2, "itemType"    # I
    .param p3, "itemSupportedOperations"    # I
    .param p4, "selected"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 92
    if-eqz p4, :cond_8

    move v0, v1

    .line 94
    .local v0, "increment":I
    :goto_0
    iget v2, p0, Lcom/lenovo/scg/photos/SelectionManager;->mSelectedTotalCount:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/lenovo/scg/photos/SelectionManager;->mSelectedTotalCount:I

    .line 95
    iput-object v4, p0, Lcom/lenovo/scg/photos/SelectionManager;->mCachedShareableUris:Ljava/util/ArrayList;

    .line 97
    and-int/lit8 v2, p3, 0x1

    if-lez v2, :cond_0

    .line 98
    iget v2, p0, Lcom/lenovo/scg/photos/SelectionManager;->mSelectedDeletableCount:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/lenovo/scg/photos/SelectionManager;->mSelectedDeletableCount:I

    .line 100
    :cond_0
    and-int/lit16 v2, p3, 0x200

    if-lez v2, :cond_1

    .line 101
    iget v2, p0, Lcom/lenovo/scg/photos/SelectionManager;->mSelectedEditableCount:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/lenovo/scg/photos/SelectionManager;->mSelectedEditableCount:I

    .line 103
    :cond_1
    and-int/lit8 v2, p3, 0x8

    if-lez v2, :cond_2

    .line 104
    iget v2, p0, Lcom/lenovo/scg/photos/SelectionManager;->mSelectedCroppableCount:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/lenovo/scg/photos/SelectionManager;->mSelectedCroppableCount:I

    .line 106
    :cond_2
    and-int/lit8 v2, p3, 0x20

    if-lez v2, :cond_3

    .line 107
    iget v2, p0, Lcom/lenovo/scg/photos/SelectionManager;->mSelectedSetableCount:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/lenovo/scg/photos/SelectionManager;->mSelectedSetableCount:I

    .line 109
    :cond_3
    and-int/lit16 v2, p3, 0x800

    if-lez v2, :cond_4

    .line 110
    iget v2, p0, Lcom/lenovo/scg/photos/SelectionManager;->mSelectedTrimmableCount:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/lenovo/scg/photos/SelectionManager;->mSelectedTrimmableCount:I

    .line 112
    :cond_4
    const/high16 v2, 0x10000

    and-int/2addr v2, p3

    if-lez v2, :cond_5

    .line 113
    iget v2, p0, Lcom/lenovo/scg/photos/SelectionManager;->mSelectedMuteableCount:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/lenovo/scg/photos/SelectionManager;->mSelectedMuteableCount:I

    .line 115
    :cond_5
    and-int/lit8 v2, p3, 0x4

    if-lez v2, :cond_6

    .line 116
    iget v2, p0, Lcom/lenovo/scg/photos/SelectionManager;->mSelectedShareableCount:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/lenovo/scg/photos/SelectionManager;->mSelectedShareableCount:I

    .line 117
    if-ne p2, v1, :cond_9

    .line 118
    iget v2, p0, Lcom/lenovo/scg/photos/SelectionManager;->mSelectedShareableImageCount:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/lenovo/scg/photos/SelectionManager;->mSelectedShareableImageCount:I

    .line 124
    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/lenovo/scg/photos/SelectionManager;->mShareIntent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 125
    iget v2, p0, Lcom/lenovo/scg/photos/SelectionManager;->mSelectedShareableCount:I

    if-nez v2, :cond_a

    .line 126
    iget-object v1, p0, Lcom/lenovo/scg/photos/SelectionManager;->mShareIntent:Landroid/content/Intent;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/lenovo/scg/photos/SelectionManager;->mShareIntent:Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 149
    return-void

    .line 92
    .end local v0    # "increment":I
    :cond_8
    const/4 v0, -0x1

    goto :goto_0

    .line 119
    .restart local v0    # "increment":I
    :cond_9
    const/4 v2, 0x3

    if-ne p2, v2, :cond_6

    .line 120
    iget v2, p0, Lcom/lenovo/scg/photos/SelectionManager;->mSelectedShareableVideoCount:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/lenovo/scg/photos/SelectionManager;->mSelectedShareableVideoCount:I

    goto :goto_1

    .line 127
    :cond_a
    iget v2, p0, Lcom/lenovo/scg/photos/SelectionManager;->mSelectedShareableCount:I

    if-lt v2, v1, :cond_7

    .line 128
    iget-object v2, p0, Lcom/lenovo/scg/photos/SelectionManager;->mUriSource:Lcom/lenovo/scg/photos/SelectionManager$SelectedUriSource;

    invoke-interface {v2}, Lcom/lenovo/scg/photos/SelectionManager$SelectedUriSource;->getSelectedShareableUris()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/photos/SelectionManager;->mCachedShareableUris:Ljava/util/ArrayList;

    .line 129
    iget-object v2, p0, Lcom/lenovo/scg/photos/SelectionManager;->mCachedShareableUris:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_b

    .line 130
    iget-object v1, p0, Lcom/lenovo/scg/photos/SelectionManager;->mShareIntent:Landroid/content/Intent;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 132
    :cond_b
    iget v2, p0, Lcom/lenovo/scg/photos/SelectionManager;->mSelectedShareableImageCount:I

    iget v3, p0, Lcom/lenovo/scg/photos/SelectionManager;->mSelectedShareableCount:I

    if-ne v2, v3, :cond_c

    .line 133
    iget-object v2, p0, Lcom/lenovo/scg/photos/SelectionManager;->mShareIntent:Landroid/content/Intent;

    const-string v3, "image/*"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    :goto_3
    iget-object v2, p0, Lcom/lenovo/scg/photos/SelectionManager;->mCachedShareableUris:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v1, :cond_e

    .line 140
    iget-object v1, p0, Lcom/lenovo/scg/photos/SelectionManager;->mShareIntent:Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    iget-object v2, p0, Lcom/lenovo/scg/photos/SelectionManager;->mShareIntent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.STREAM"

    iget-object v1, p0, Lcom/lenovo/scg/photos/SelectionManager;->mCachedShareableUris:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_2

    .line 134
    :cond_c
    iget v2, p0, Lcom/lenovo/scg/photos/SelectionManager;->mSelectedShareableVideoCount:I

    iget v3, p0, Lcom/lenovo/scg/photos/SelectionManager;->mSelectedShareableCount:I

    if-ne v2, v3, :cond_d

    .line 135
    iget-object v2, p0, Lcom/lenovo/scg/photos/SelectionManager;->mShareIntent:Landroid/content/Intent;

    const-string/jumbo v3, "video/*"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 137
    :cond_d
    iget-object v2, p0, Lcom/lenovo/scg/photos/SelectionManager;->mShareIntent:Landroid/content/Intent;

    const-string v3, "*/*"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 143
    :cond_e
    iget-object v1, p0, Lcom/lenovo/scg/photos/SelectionManager;->mShareIntent:Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    iget-object v1, p0, Lcom/lenovo/scg/photos/SelectionManager;->mShareIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    iget-object v3, p0, Lcom/lenovo/scg/photos/SelectionManager;->mCachedShareableUris:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_2
.end method

.method public setSelectedUriSource(Lcom/lenovo/scg/photos/SelectionManager$SelectedUriSource;)V
    .locals 0
    .param p1, "source"    # Lcom/lenovo/scg/photos/SelectionManager$SelectedUriSource;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/lenovo/scg/photos/SelectionManager;->mUriSource:Lcom/lenovo/scg/photos/SelectionManager$SelectedUriSource;

    .line 67
    return-void
.end method
