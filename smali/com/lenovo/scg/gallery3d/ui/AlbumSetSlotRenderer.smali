.class public Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;
.super Lcom/lenovo/scg/gallery3d/ui/AbstractSlotRenderer;
.source "AlbumSetSlotRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$1;,
        Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$MyCacheListener;,
        Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x30

.field private static final PLACEHOLDER_COLOR:I = -0x111112

.field private static final TAG:Ljava/lang/String; = "AlbumSetView"

.field public static mCloudAlbumSetCount:I

.field public static mCloudPhotoCount:I

.field public static mCloudSize:F

.field public static mCloudSurplus:F

.field public static mCloudUsed:F


# instance fields
.field private isOnline:Z

.field private isShowEntry:Z

.field private isShowSync:Z

.field private final mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

.field private mAnimatePressedUp:Z

.field private mBgPadding:I

.field public mCloudBgDefTextureHeight:I

.field public mCloudBgTextureHeight:I

.field private mCloudBigTextureSize:I

.field public mCloudButtonIconHeight:I

.field public mCloudButtonIconWidth:I

.field public mCloudButtonIconX:I

.field public mCloudButtonIconY:I

.field private mCloudButtonTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

.field private mCloudCountString:Ljava/lang/String;

.field private mCloudCountTexture:Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

.field private mCloudCountTextureX:I

.field private mCloudCountTextureY:I

.field private mCloudCoverTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

.field public mCloudDefTextureHeight:I

.field public mCloudDefTextureWidth:I

.field public mCloudDefTextureX:I

.field public mCloudDefTextureY:I

.field public mCloudDownloadCurrent:I

.field private mCloudDownloadString:Ljava/lang/String;

.field private mCloudDownloadTexture:Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

.field public mCloudDownloadTotal:I

.field public mCloudLineHeight:I

.field private mCloudLineTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;

.field public mCloudLineWidth:I

.field public mCloudLineX:I

.field public mCloudLineY:I

.field private mCloudLoad1X:I

.field private mCloudLoad1Y:I

.field private mCloudLoad2X:I

.field private mCloudLoad2Y:I

.field private mCloudLocalTexture:Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

.field private mCloudLocalTextureX:I

.field private mCloudLocalTextureY:I

.field public mCloudLoginedIconHeight:I

.field private mCloudLoginedIconTextTexture:Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

.field private mCloudLoginedIconTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

.field public mCloudLoginedIconWidth:I

.field public mCloudLoginedIconX:I

.field public mCloudLoginedIconY:I

.field public mCloudLoginedTextIconX:I

.field public mCloudLoginedTextIconY:I

.field private mCloudSmallTextureSize:I

.field private mCloudSpaceString:Ljava/lang/String;

.field private mCloudSpaceTexture:Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

.field private mCloudSpaceTextureX:I

.field private mCloudSpaceTextureY:I

.field private mCloudSyncText:Ljava/lang/String;

.field private final mCloudSyncTextColor:I

.field private final mCloudSyncTextSize:I

.field private mCloudTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

.field private mCloudTextureColor:I

.field public mCloudTextureHeight:I

.field public mCloudTextureWidth:I

.field public mCloudTextureX:I

.field public mCloudTextureY:I

.field public mCloudUnloginIconHeight:I

.field private mCloudUnloginIconTextTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

.field private mCloudUnloginIconTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

.field public mCloudUnloginIconWidth:I

.field public mCloudUnloginIconX:I

.field public mCloudUnloginIconY:I

.field public mCloudUnloginTextIconHeight:I

.field public mCloudUnloginTextIconWidth:I

.field public mCloudUnloginTextIconX:I

.field public mCloudUnloginTextIconY:I

.field public mCloudUploadCurrent:I

.field private mCloudUploadString:Ljava/lang/String;

.field private mCloudUploadTexture:Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

.field public mCloudUploadTotal:I

.field private mContext:Landroid/content/Context;

.field protected mDataWindow:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

.field private mEmptyStringTexture:Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

.field private mEmptyTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

.field private mFolderFilterInvisibleBg:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

.field private final mFolderFilterMaseColor:I

.field private mFolderFilterMaskTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;

.field private final mFolderFilterTextColor:I

.field private final mFolderFilterTextSize:I

.field private mFolderFilterVisibleBg:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

.field private mHeightGap:I

.field private mHighlightItemPath:Lcom/lenovo/scg/gallery3d/data/Path;

.field private mInSelectionMode:Z

.field private mInvisibleFolderName:Ljava/lang/String;

.field private mIsFristCloud:Z

.field protected final mLabelSpec:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

.field private final mPlaceholderColor:I

.field private mPressedIndex:I

.field private final mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

.field private mShowDownload:Z

.field private mShowUpload:Z

.field private mSlotView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

.field private mSyncBgTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

.field private mVisibleFolderName:Ljava/lang/String;

.field private final mWaitLoadingTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;

.field private mWidthGap:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 132
    sput v1, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudPhotoCount:I

    .line 133
    sput v1, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudAlbumSetCount:I

    .line 138
    sput v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudSize:F

    .line 139
    sput v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudSurplus:F

    .line 140
    sput v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudUsed:F

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/ui/SelectionManager;Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;I)V
    .locals 6
    .param p1, "activity"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .param p2, "selectionManager"    # Lcom/lenovo/scg/gallery3d/ui/SelectionManager;
    .param p3, "slotView"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;
    .param p4, "labelSpec"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;
    .param p5, "placeholderColor"    # I

    .prologue
    const/16 v5, 0xe

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 196
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/AbstractSlotRenderer;-><init>(Landroid/content/Context;)V

    .line 79
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mFolderFilterVisibleBg:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    .line 81
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mFolderFilterInvisibleBg:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    .line 83
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mVisibleFolderName:Ljava/lang/String;

    .line 85
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mInvisibleFolderName:Ljava/lang/String;

    .line 87
    iput v5, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mFolderFilterTextSize:I

    .line 89
    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mFolderFilterTextColor:I

    .line 91
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mFolderFilterMaskTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;

    .line 93
    const/high16 v0, 0x60000000

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mFolderFilterMaseColor:I

    .line 98
    iput-boolean v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->isShowEntry:Z

    .line 99
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    .line 100
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudButtonTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    .line 101
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudCoverTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    .line 102
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudLocalTexture:Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

    .line 104
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudLineTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;

    .line 114
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mEmptyTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    .line 115
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mEmptyStringTexture:Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

    .line 116
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudCountTexture:Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

    .line 117
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudUploadTexture:Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

    .line 118
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudDownloadTexture:Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

    .line 119
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudSpaceTexture:Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

    .line 124
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudCountString:Ljava/lang/String;

    .line 125
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudUploadString:Ljava/lang/String;

    .line 126
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudDownloadString:Ljava/lang/String;

    .line 127
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudSpaceString:Ljava/lang/String;

    .line 128
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudUnloginIconTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    .line 129
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudUnloginIconTextTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    .line 130
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudLoginedIconTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    .line 131
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudLoginedIconTextTexture:Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

    .line 134
    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudUploadTotal:I

    .line 135
    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudUploadCurrent:I

    .line 136
    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudDownloadTotal:I

    .line 137
    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudDownloadCurrent:I

    .line 144
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->isShowSync:Z

    .line 145
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mSyncBgTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    .line 146
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudSyncText:Ljava/lang/String;

    .line 147
    iput v5, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudSyncTextSize:I

    .line 148
    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudSyncTextColor:I

    .line 151
    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mPressedIndex:I

    .line 155
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mHighlightItemPath:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 159
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    .line 161
    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mWidthGap:I

    .line 163
    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mHeightGap:I

    .line 165
    const/16 v0, 0x19

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mBgPadding:I

    .line 370
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mShowUpload:Z

    .line 382
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mShowDownload:Z

    .line 197
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 198
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    .line 199
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    .line 200
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    .line 201
    iput-object p4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mLabelSpec:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    .line 202
    iput p5, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mPlaceholderColor:I

    .line 204
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mPlaceholderColor:I

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;-><init>(I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mWaitLoadingTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;

    .line 205
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mWaitLoadingTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;

    invoke-virtual {v0, v4, v4}, Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;->setSize(II)V

    .line 208
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->getNeedDimens()V

    .line 211
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    const v2, 0x7f0205dd

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mFolderFilterVisibleBg:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    .line 212
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    const v2, 0x7f0205d7

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mFolderFilterInvisibleBg:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    .line 213
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;

    const/high16 v1, 0x60000000

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;-><init>(I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mFolderFilterMaskTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;

    .line 214
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0903

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mVisibleFolderName:Ljava/lang/String;

    .line 215
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0904

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mInvisibleFolderName:Ljava/lang/String;

    .line 219
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090325

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudDefTextureX:I

    .line 220
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090326

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudDefTextureY:I

    .line 221
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090327

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudDefTextureWidth:I

    .line 222
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090328

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudDefTextureHeight:I

    .line 223
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090329

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudBgDefTextureHeight:I

    .line 224
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09032a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudLoginedIconX:I

    .line 225
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09032b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudLoginedIconY:I

    .line 226
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09032c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudLoginedIconWidth:I

    .line 227
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09032d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudLoginedIconHeight:I

    .line 228
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09032e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudLoginedTextIconX:I

    .line 229
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09032f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudLoginedTextIconY:I

    .line 230
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090332

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudUnloginIconX:I

    .line 231
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090333

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudUnloginIconY:I

    .line 232
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090334

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudUnloginIconWidth:I

    .line 233
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090335

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudUnloginIconHeight:I

    .line 234
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090336

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudUnloginTextIconX:I

    .line 235
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090337

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudUnloginTextIconY:I

    .line 236
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090338

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudUnloginTextIconWidth:I

    .line 237
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090339

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudUnloginTextIconHeight:I

    .line 238
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09033a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudButtonIconX:I

    .line 239
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09033b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudButtonIconY:I

    .line 240
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09033c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudButtonIconWidth:I

    .line 241
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09033d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudButtonIconHeight:I

    .line 242
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09033e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudLocalTextureX:I

    .line 243
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09033f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudLocalTextureY:I

    .line 244
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090341

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudLineX:I

    .line 245
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090342

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudLineY:I

    .line 246
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090343

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudLineWidth:I

    .line 247
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090344

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudLineHeight:I

    .line 248
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f091b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudCountString:Ljava/lang/String;

    .line 249
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f091c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudUploadString:Ljava/lang/String;

    .line 250
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f091d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudDownloadString:Ljava/lang/String;

    .line 251
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f091e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudSpaceString:Ljava/lang/String;

    .line 252
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090345

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudBigTextureSize:I

    .line 253
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090346

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudSmallTextureSize:I

    .line 254
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudTextureColor:I

    .line 255
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090347

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudCountTextureX:I

    .line 256
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090348

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudCountTextureY:I

    .line 257
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090349

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudLoad1X:I

    .line 258
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09034a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudLoad1Y:I

    .line 259
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09034b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudLoad2X:I

    .line 260
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09034c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudLoad2Y:I

    .line 261
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09034d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudSpaceTextureX:I

    .line 262
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09034e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudSpaceTextureY:I

    .line 264
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    const v2, 0x7f02042d

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudLoginedIconTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    .line 265
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f091f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x42600000    # 56.0f

    invoke-static {v0, v1, v3, v4}, Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;FIZ)Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudLoginedIconTextTexture:Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

    .line 267
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    const v2, 0x7f02042f

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudUnloginIconTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    .line 268
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    const v2, 0x7f020430

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudUnloginIconTextTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    .line 269
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;-><init>(I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudLineTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;

    .line 270
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f06a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090340

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00f8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudLocalTexture:Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

    .line 272
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    const v2, 0x7f020779

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mEmptyTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    .line 273
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0689

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x42400000    # 48.0f

    const v2, 0x56ffffff

    invoke-static {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mEmptyStringTexture:Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

    .line 274
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    const v2, 0x7f02042c

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudCoverTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    .line 275
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    const v2, 0x7f02042b

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudButtonTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    .line 277
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0920

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudSyncText:Ljava/lang/String;

    .line 278
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    const v2, 0x7f0205de

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mSyncBgTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    .line 279
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->resSetLoginState()V

    .line 281
    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    return-object v0
.end method

.method private static checkContentTexture(Lcom/lenovo/scg/gallery3d/glrenderer/Texture;)Lcom/lenovo/scg/gallery3d/glrenderer/Texture;
    .locals 1
    .param p0, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    .prologue
    .line 325
    instance-of v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    .end local p0    # "texture":Lcom/lenovo/scg/gallery3d/glrenderer/Texture;
    :cond_0
    return-object p0
.end method

.method private static checkLabelTexture(Lcom/lenovo/scg/gallery3d/glrenderer/Texture;)Lcom/lenovo/scg/gallery3d/glrenderer/Texture;
    .locals 1
    .param p0, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    .prologue
    .line 321
    instance-of v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/UploadedTexture;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/lenovo/scg/gallery3d/glrenderer/UploadedTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/UploadedTexture;->isUploading()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .end local p0    # "texture":Lcom/lenovo/scg/gallery3d/glrenderer/Texture;
    :cond_0
    return-object p0
.end method

.method private getNeedDimens()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090474

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mWidthGap:I

    .line 285
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090475

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mHeightGap:I

    .line 286
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09046c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mBgPadding:I

    .line 287
    return-void
.end method

.method private renderFolderFilter(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)I
    .locals 12
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "entry"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 488
    :try_start_0
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->mLaunchGalleryFromExternal:Z

    if-eqz v0, :cond_0

    .line 489
    const/4 v0, 0x0

    .line 535
    :goto_0
    return v0

    .line 491
    :cond_0
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getInstance()Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getSelectedMap()Ljava/util/Map;

    move-result-object v10

    .line 492
    .local v10, "selectedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v10, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p2, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    if-nez v0, :cond_2

    .line 493
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 495
    :cond_2
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getInstance()Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getSelectedState()Z

    move-result v11

    .line 496
    .local v11, "tmp":Z
    const/4 v8, 0x0

    .line 498
    .local v8, "isFound":Z
    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p2, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p2, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p2, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 500
    const/4 v8, 0x1

    .line 513
    :cond_3
    :goto_1
    if-eqz v8, :cond_7

    .line 514
    if-eqz v11, :cond_4

    .line 518
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mFolderFilterVisibleBg:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mFolderFilterVisibleBg:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->getWidth()I

    move-result v0

    sub-int v0, p3, v0

    add-int/lit8 v2, v0, -0x22

    const/4 v3, 0x7

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mFolderFilterVisibleBg:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->getWidth()I

    move-result v4

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mFolderFilterVisibleBg:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->getHeight()I

    move-result v5

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;IIII)V

    .line 535
    .end local v8    # "isFound":Z
    .end local v10    # "selectedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "tmp":Z
    :cond_4
    :goto_2
    const/4 v0, 0x0

    goto :goto_0

    .line 502
    .restart local v8    # "isFound":Z
    .restart local v10    # "selectedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11    # "tmp":Z
    :cond_5
    sget-object v7, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->mDefaultFilterDirectoryMap:Ljava/util/Map;

    .line 503
    .local v7, "defaultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 504
    .local v9, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 505
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 507
    .local v6, "bucketId":Ljava/lang/String;
    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p2, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 508
    const/4 v8, 0x1

    .line 509
    goto :goto_1

    .line 525
    .end local v6    # "bucketId":Ljava/lang/String;
    .end local v7    # "defaultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_7
    if-eqz v11, :cond_4

    .line 527
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mFolderFilterInvisibleBg:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mFolderFilterInvisibleBg:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->getWidth()I

    move-result v0

    sub-int v0, p3, v0

    add-int/lit8 v2, v0, -0x22

    const/4 v3, 0x7

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mFolderFilterInvisibleBg:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->getWidth()I

    move-result v4

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mFolderFilterInvisibleBg:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->getHeight()I

    move-result v5

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 531
    .end local v8    # "isFound":Z
    .end local v10    # "selectedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "tmp":Z
    :catch_0
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method protected checkSync(II)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "none"    # I

    .prologue
    .line 558
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->isShowSync:Z

    if-nez v1, :cond_1

    move p2, p1

    .line 563
    .end local p2    # "none":I
    :cond_0
    :goto_0
    return p2

    .line 559
    .restart local p2    # "none":I
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 560
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->get(I)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    move-result-object v0

    .line 561
    .local v0, "entry":Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    if-eqz v1, :cond_0

    .line 562
    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->isCameraRoll()Z

    move-result v1

    if-nez v1, :cond_0

    move p2, p1

    .line 563
    goto :goto_0
.end method

.method public onSlotSizeChanged(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 685
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->onSlotSizeChanged(II)V

    .line 688
    :cond_0
    return-void
.end method

.method public onVisibleRangeChanged(II)V
    .locals 1
    .param p1, "visibleStart"    # I
    .param p2, "visibleEnd"    # I

    .prologue
    .line 678
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->setActiveWindow(II)V

    .line 681
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->pause()V

    .line 670
    return-void
.end method

.method public prepareDrawing()V
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mInSelectionMode:Z

    .line 650
    return-void
.end method

.method protected renderCloud(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)I
    .locals 12
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 410
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->isShowEntry:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getInstance()Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getSelectedState()Z

    move-result v0

    if-nez v0, :cond_7

    .line 411
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudDefTextureX:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudTextureX:I

    .line 412
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudDefTextureY:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudTextureY:I

    .line 413
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudDefTextureWidth:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudTextureWidth:I

    .line 414
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudDefTextureHeight:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudTextureHeight:I

    .line 415
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudBgDefTextureHeight:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudBgTextureHeight:I

    .line 416
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mIsFristCloud:Z

    if-eqz v0, :cond_2

    .line 417
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudTextureX:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudTextureY:I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudTextureWidth:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudTextureHeight:I

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;IIII)V

    .line 448
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudCoverTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudTextureX:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudTextureY:I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudTextureWidth:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudTextureHeight:I

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;IIII)V

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudLocalTexture:Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudLocalTextureX:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudLocalTextureY:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    .line 451
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudLineTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudLineX:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudLineY:I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudLineWidth:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudLineHeight:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 460
    :cond_1
    :goto_1
    return v8

    .line 419
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudTextureX:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudTextureY:I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudTextureWidth:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudTextureHeight:I

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;IIII)V

    .line 420
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->isOnline:Z

    if-eqz v0, :cond_6

    sget v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudAlbumSetCount:I

    if-lez v0, :cond_6

    .line 421
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudLoginedIconTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudLoginedIconX:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudLoginedIconY:I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudLoginedIconWidth:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudLoginedIconHeight:I

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;IIII)V

    .line 422
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudLoginedIconTextTexture:Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudLoginedTextIconX:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudLoginedTextIconY:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    .line 423
    sget v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudSize:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3

    .line 424
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->initCloudSize()V

    .line 426
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudCountString:Ljava/lang/String;

    new-array v1, v10, [Ljava/lang/Object;

    sget v2, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudPhotoCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    sget v2, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudAlbumSetCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudBigTextureSize:I

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudTextureColor:I

    invoke-static {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudCountTexture:Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

    .line 427
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudCountTexture:Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudCountTextureX:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudCountTextureY:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    .line 428
    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudLoad1X:I

    .line 429
    .local v6, "loadX":I
    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudLoad1Y:I

    .line 430
    .local v7, "loadY":I
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mShowUpload:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudUploadCurrent:I

    if-le v0, v11, :cond_4

    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudUploadTotal:I

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudUploadCurrent:I

    if-le v0, v1, :cond_4

    .line 431
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudUploadString:Ljava/lang/String;

    new-array v1, v10, [Ljava/lang/Object;

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudUploadCurrent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudUploadTotal:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudBigTextureSize:I

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudTextureColor:I

    invoke-static {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudUploadTexture:Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

    .line 432
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudUploadTexture:Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

    invoke-virtual {v0, p1, v6, v7}, Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    .line 433
    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudLoad2X:I

    .line 434
    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudLoad2Y:I

    .line 436
    :cond_4
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mShowDownload:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudDownloadCurrent:I

    if-le v0, v11, :cond_5

    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudDownloadTotal:I

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudDownloadCurrent:I

    if-le v0, v1, :cond_5

    .line 437
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudDownloadString:Ljava/lang/String;

    new-array v1, v10, [Ljava/lang/Object;

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudDownloadCurrent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudDownloadTotal:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudBigTextureSize:I

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudTextureColor:I

    invoke-static {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudDownloadTexture:Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

    .line 438
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudDownloadTexture:Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

    invoke-virtual {v0, p1, v6, v7}, Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    .line 440
    :cond_5
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudSpaceString:Ljava/lang/String;

    new-array v1, v10, [Ljava/lang/Object;

    sget v2, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudSize:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v8

    sget v2, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudSurplus:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudSmallTextureSize:I

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudTextureColor:I

    invoke-static {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudSpaceTexture:Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

    .line 441
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudSpaceTexture:Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudSpaceTextureX:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudSpaceTextureY:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    .line 446
    .end local v6    # "loadX":I
    .end local v7    # "loadY":I
    :goto_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudButtonTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudButtonIconX:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudButtonIconY:I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudButtonIconWidth:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudButtonIconHeight:I

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;IIII)V

    goto/16 :goto_0

    .line 443
    :cond_6
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudUnloginIconTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudUnloginIconX:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudUnloginIconY:I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudUnloginIconWidth:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudUnloginIconHeight:I

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;IIII)V

    .line 444
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudUnloginIconTextTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudUnloginTextIconX:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudUnloginTextIconY:I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudUnloginTextIconWidth:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudUnloginTextIconHeight:I

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;IIII)V

    goto :goto_2

    .line 452
    :cond_7
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudTextureHeight:I

    if-eqz v0, :cond_1

    .line 453
    iput v8, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudTextureX:I

    .line 454
    iput v8, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudTextureY:I

    .line 455
    iput v8, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudTextureWidth:I

    .line 456
    iput v8, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudTextureHeight:I

    .line 457
    iput v8, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudBgTextureHeight:I

    .line 458
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    invoke-virtual {v0, v8}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->setScrollPosition(I)V

    goto/16 :goto_1
.end method

.method protected renderContent(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)I
    .locals 9
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "entry"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 594
    const/4 v7, 0x0

    .line 595
    .local v7, "renderRequestFlags":I
    if-nez p2, :cond_0

    move v8, v7

    .line 630
    .end local v7    # "renderRequestFlags":I
    .local v8, "renderRequestFlags":I
    :goto_0
    return v8

    .line 599
    .end local v8    # "renderRequestFlags":I
    .restart local v7    # "renderRequestFlags":I
    :cond_0
    iget-object v0, p2, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->content:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->checkContentTexture(Lcom/lenovo/scg/gallery3d/glrenderer/Texture;)Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    move-result-object v2

    .line 600
    .local v2, "content":Lcom/lenovo/scg/gallery3d/glrenderer/Texture;
    if-nez v2, :cond_3

    .line 601
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mWaitLoadingTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;

    .line 602
    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->isWaitLoadingDisplayed:Z

    .line 609
    :cond_1
    :goto_1
    iget v5, p2, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->rotation:I

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->drawContent(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/glrenderer/Texture;IIIF)V

    .line 610
    instance-of v0, v2, Lcom/lenovo/scg/gallery3d/glrenderer/FadeInTexture;

    if-eqz v0, :cond_2

    check-cast v2, Lcom/lenovo/scg/gallery3d/glrenderer/FadeInTexture;

    .end local v2    # "content":Lcom/lenovo/scg/gallery3d/glrenderer/Texture;
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/glrenderer/FadeInTexture;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 611
    or-int/lit8 v7, v7, 0x2

    :cond_2
    move v8, v7

    .line 630
    .end local v7    # "renderRequestFlags":I
    .restart local v8    # "renderRequestFlags":I
    goto :goto_0

    .line 603
    .end local v8    # "renderRequestFlags":I
    .restart local v2    # "content":Lcom/lenovo/scg/gallery3d/glrenderer/Texture;
    .restart local v7    # "renderRequestFlags":I
    :cond_3
    iget-boolean v0, p2, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->isWaitLoadingDisplayed:Z

    if-eqz v0, :cond_1

    .line 604
    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->isWaitLoadingDisplayed:Z

    .line 605
    new-instance v2, Lcom/lenovo/scg/gallery3d/glrenderer/FadeInTexture;

    .end local v2    # "content":Lcom/lenovo/scg/gallery3d/glrenderer/Texture;
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mPlaceholderColor:I

    iget-object v1, p2, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

    invoke-direct {v2, v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/FadeInTexture;-><init>(ILcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;)V

    .line 606
    .restart local v2    # "content":Lcom/lenovo/scg/gallery3d/glrenderer/Texture;
    iput-object v2, p2, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->content:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    goto :goto_1
.end method

.method protected renderEmpty(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)I
    .locals 6
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 468
    const/4 v3, 0x0

    .line 469
    .local v3, "y":I
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->getInstance()Lcom/lenovo/scg/gallery3d/app/GalleryConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->isCloudSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    instance-of v0, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->isShowTopTab()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->getHeight()I

    move-result v0

    div-int/lit8 v3, v0, 0x2

    .line 476
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mEmptyTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v2, v0, 0x2

    .line 477
    .local v2, "x":I
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mEmptyTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mEmptyTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->getWidth()I

    move-result v4

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mEmptyTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->getHeight()I

    move-result v5

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;IIII)V

    .line 478
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mEmptyStringTexture:Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v2, v0, 0x2

    .line 479
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mEmptyTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x3c

    add-int/2addr v3, v0

    .line 480
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mEmptyStringTexture:Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

    invoke-virtual {v0, p1, v2, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    .line 481
    const/4 v0, 0x0

    return v0

    .line 474
    .end local v2    # "x":I
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->getHeight()I

    move-result v0

    div-int/lit8 v3, v0, 0x3

    goto :goto_0
.end method

.method protected renderLabel(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)I
    .locals 8
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "entry"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v7, 0x0

    .line 634
    if-nez p2, :cond_0

    .line 644
    :goto_0
    return v7

    .line 635
    :cond_0
    iget-object v1, p2, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->checkLabelTexture(Lcom/lenovo/scg/gallery3d/glrenderer/Texture;)Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    move-result-object v0

    .line 636
    .local v0, "content":Lcom/lenovo/scg/gallery3d/glrenderer/Texture;
    if-nez v0, :cond_1

    .line 637
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mWaitLoadingTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;

    .line 639
    :cond_1
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->getBorderSize()I

    move-result v6

    .line 641
    .local v6, "b":I
    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getHeight()I

    move-result v5

    .line 643
    .local v5, "h":I
    neg-int v2, v6

    sub-int v1, p4, v5

    add-int v3, v1, v6

    move-object v1, p1

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    goto :goto_0
.end method

.method protected renderOverlay(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;ILcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)I
    .locals 4
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "index"    # I
    .param p3, "entry"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 568
    const/4 v0, 0x0

    .line 569
    .local v0, "renderRequestFlags":I
    iget-object v2, p3, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    if-eqz v2, :cond_0

    iget-object v2, p3, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->isCameraRoll()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 570
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mLabelSpec:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    sub-int v1, p5, v2

    .line 571
    .local v1, "uncoveredHeight":I
    div-int/lit8 v2, v1, 0x2

    .line 574
    .end local v1    # "uncoveredHeight":I
    :cond_0
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mPressedIndex:I

    if-ne v2, p2, :cond_3

    .line 575
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mAnimatePressedUp:Z

    if-eqz v2, :cond_2

    .line 576
    invoke-virtual {p0, p1, p4, p5}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->drawPressedUpFrame(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    .line 577
    or-int/lit8 v0, v0, 0x2

    .line 578
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->isPressedUpFrameFinished()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 579
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mAnimatePressedUp:Z

    .line 580
    const/4 v2, -0x1

    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mPressedIndex:I

    .line 590
    :cond_1
    :goto_0
    return v0

    .line 583
    :cond_2
    invoke-virtual {p0, p1, p4, p5}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->drawPressedFrame(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    goto :goto_0

    .line 585
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mHighlightItemPath:Lcom/lenovo/scg/gallery3d/data/Path;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mHighlightItemPath:Lcom/lenovo/scg/gallery3d/data/Path;

    iget-object v3, p3, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->setPath:Lcom/lenovo/scg/gallery3d/data/Path;

    if-ne v2, v3, :cond_4

    .line 586
    invoke-virtual {p0, p1, p4, p5}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->drawSelectedFrame(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    goto :goto_0

    .line 587
    :cond_4
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mInSelectionMode:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    iget-object v3, p3, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->setPath:Lcom/lenovo/scg/gallery3d/data/Path;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->isItemSelected(Lcom/lenovo/scg/gallery3d/data/Path;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 588
    invoke-virtual {p0, p1, p4, p5}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->drawSelectedFrame(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    goto :goto_0
.end method

.method public renderSlot(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)I
    .locals 8
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "index"    # I
    .param p3, "pass"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 330
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0, p2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->get(I)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    move-result-object v3

    .line 331
    .local v3, "entry":Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    const/4 v6, 0x0

    .line 332
    .local v6, "renderRequestFlags":I
    if-nez v3, :cond_0

    move v7, v6

    .line 349
    .end local v6    # "renderRequestFlags":I
    .local v7, "renderRequestFlags":I
    :goto_0
    return v7

    .line 335
    .end local v7    # "renderRequestFlags":I
    .restart local v6    # "renderRequestFlags":I
    :cond_0
    invoke-virtual {p0, p1, v3, p4, p5}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->renderContent(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)I

    move-result v0

    or-int/2addr v6, v0

    .line 337
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->getItemBgWidth()I

    move-result v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->getItemBgHeight()I

    move-result v1

    invoke-virtual {p0, p1, v3, v0, v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->renderLabel(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)I

    move-result v0

    or-int/2addr v6, v0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p4

    move v5, p5

    .line 343
    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->renderOverlay(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;ILcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)I

    move-result v0

    or-int/2addr v6, v0

    .line 346
    invoke-direct {p0, p1, v3, p4, p5}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->renderFolderFilter(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)I

    move-result v0

    or-int/2addr v6, v0

    move v7, v6

    .line 349
    .end local v6    # "renderRequestFlags":I
    .restart local v7    # "renderRequestFlags":I
    goto :goto_0
.end method

.method protected renderSync(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;III)I
    .locals 8
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "index"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 545
    const/4 v7, 0x0

    .line 546
    .local v7, "renderRequestFlags":I
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->isShowSync:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

    if-eqz v0, :cond_0

    if-gez p2, :cond_1

    .line 555
    :cond_0
    :goto_0
    return v7

    .line 547
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 548
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0, p2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->get(I)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    move-result-object v6

    .line 549
    .local v6, "entry":Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    if-eqz v6, :cond_0

    iget-object v0, v6, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, v6, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->isCameraRoll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mSyncBgTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mBgPadding:I

    neg-int v2, v0

    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mBgPadding:I

    neg-int v3, v0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mSyncBgTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->getWidth()I

    move-result v4

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mSyncBgTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->getHeight()I

    move-result v5

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;IIII)V

    .line 552
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudSyncText:Ljava/lang/String;

    const/16 v2, 0xe

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

    move-result-object v1

    .line 553
    .local v1, "st":Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;->getWidth()I

    move-result v0

    sub-int v0, p3, v0

    div-int/lit8 v2, v0, 0x2

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;->getHeight()I

    move-result v0

    sub-int v0, p4, v0

    div-int/lit8 v3, v0, 0x2

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;->getHeight()I

    move-result v5

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;IIII)V

    goto :goto_0
.end method

.method public resSetLoginState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 389
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;-><init>(Landroid/app/Activity;)V

    .line 390
    .local v0, "lcpaccount":Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->isOnline()Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->isOnline:Z

    .line 391
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->isOnline:Z

    if-eqz v1, :cond_0

    .line 392
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getInstance(Landroid/app/Application;)Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->isFristCloud(Z)V

    .line 400
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getInstance(Landroid/app/Application;)Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->isFristCloud()Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mIsFristCloud:Z

    .line 401
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mIsFristCloud:Z

    if-eqz v1, :cond_1

    .line 402
    new-instance v1, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    const v3, 0x7f02042e

    invoke-direct {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    .line 406
    :goto_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->invalidate()V

    .line 407
    return-void

    .line 394
    :cond_0
    sput v3, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudPhotoCount:I

    .line 395
    sput v3, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudAlbumSetCount:I

    .line 396
    sput v2, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudSize:F

    .line 397
    sput v2, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudSurplus:F

    .line 398
    sput v2, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudUsed:F

    goto :goto_0

    .line 404
    :cond_1
    new-instance v1, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mContext:Landroid/content/Context;

    const v3, 0x7f02042a

    invoke-direct {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    goto :goto_1
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->resume()V

    .line 674
    return-void
.end method

.method public setCount(II)V
    .locals 1
    .param p1, "album"    # I
    .param p2, "photo"    # I

    .prologue
    .line 354
    sput p2, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudPhotoCount:I

    .line 355
    sput p1, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudAlbumSetCount:I

    .line 356
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->invalidate()V

    .line 357
    return-void
.end method

.method public setDownload(II)V
    .locals 1
    .param p1, "total"    # I
    .param p2, "current"    # I

    .prologue
    .line 377
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudDownloadTotal:I

    .line 378
    iput p2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudDownloadCurrent:I

    .line 379
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->invalidate()V

    .line 380
    return-void
.end method

.method public setGetMultiContent(Z)V
    .locals 1
    .param p1, "is"    # Z

    .prologue
    .line 541
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->isSync()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->isShowSync:Z

    .line 542
    return-void

    .line 541
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHighlightItemPath(Lcom/lenovo/scg/gallery3d/data/Path;)V
    .locals 1
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mHighlightItemPath:Lcom/lenovo/scg/gallery3d/data/Path;

    if-ne v0, p1, :cond_0

    .line 305
    :goto_0
    return-void

    .line 303
    :cond_0
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mHighlightItemPath:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 304
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->invalidate()V

    goto :goto_0
.end method

.method public setModel(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;)V
    .locals 5
    .param p1, "model"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    .prologue
    const/4 v4, 0x0

    .line 308
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->setListener(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$Listener;)V

    .line 310
    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

    .line 311
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->setSlotCount(I)Z

    .line 313
    :cond_0
    if-eqz p1, :cond_1

    .line 314
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mLabelSpec:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const/16 v3, 0x30

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

    .line 315
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$MyCacheListener;

    invoke-direct {v1, p0, v4}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$MyCacheListener;-><init>(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$1;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->setListener(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$Listener;)V

    .line 316
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->setSlotCount(I)Z

    .line 318
    :cond_1
    return-void
.end method

.method public setPressedIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 290
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mPressedIndex:I

    if-ne v0, p1, :cond_0

    .line 293
    :goto_0
    return-void

    .line 291
    :cond_0
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mPressedIndex:I

    .line 292
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->invalidate()V

    goto :goto_0
.end method

.method public setPressedUp()V
    .locals 2

    .prologue
    .line 296
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mPressedIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 299
    :goto_0
    return-void

    .line 297
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mAnimatePressedUp:Z

    .line 298
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->invalidate()V

    goto :goto_0
.end method

.method public setUpload(II)V
    .locals 1
    .param p1, "total"    # I
    .param p2, "current"    # I

    .prologue
    .line 365
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudUploadTotal:I

    .line 366
    iput p2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudUploadCurrent:I

    .line 367
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->invalidate()V

    .line 368
    return-void
.end method

.method public showDownload(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 384
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mShowDownload:Z

    .line 385
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->invalidate()V

    .line 386
    return-void
.end method

.method public showEntry(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 464
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->isShowEntry:Z

    .line 465
    return-void
.end method

.method public showUpload(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 372
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mShowUpload:Z

    .line 373
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->invalidate()V

    .line 374
    return-void
.end method

.method public updateCount(I)V
    .locals 1
    .param p1, "photo"    # I

    .prologue
    .line 360
    sget v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudPhotoCount:I

    add-int/2addr v0, p1

    sput v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudPhotoCount:I

    .line 361
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->invalidate()V

    .line 362
    return-void
.end method
