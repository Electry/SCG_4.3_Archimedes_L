.class public Lcom/lenovo/scg/gallery3d/data/FilterSource;
.super Lcom/lenovo/scg/gallery3d/data/MediaSource;
.source "FilterSource.java"


# static fields
.field private static final FILTER_BY_CAMERA_SHORTCUT:I = 0x4

.field private static final FILTER_BY_CAMERA_SHORTCUT_ITEM:I = 0x5

.field private static final FILTER_BY_DELETE:I = 0x1

.field private static final FILTER_BY_DELETE_TIME:I = 0xb

.field private static final FILTER_BY_EMPTY:I = 0x2

.field private static final FILTER_BY_EMPTY_ITEM:I = 0x3

.field private static final FILTER_BY_MEDIATYPE:I = 0x0

.field public static final FILTER_CAMERA_SHORTCUT:Ljava/lang/String; = "/filter/camera_shortcut"

.field private static final FILTER_CAMERA_SHORTCUT_ITEM:Ljava/lang/String; = "/filter/camera_shortcut_item"

.field public static final FILTER_EMPTY_ITEM:Ljava/lang/String; = "/filter/empty_prompt"

.field private static final TAG:Ljava/lang/String; = "FilterSource"


# instance fields
.field private mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

.field private mCameraShortcutItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

.field private mEmptyItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

.field private mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/app/GalleryApp;)V
    .locals 3
    .param p1, "application"    # Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    .prologue
    .line 58
    const-string v0, "filter"

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 59
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/data/FilterSource;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    .line 60
    new-instance v0, Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/FilterSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    .line 61
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/FilterSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    const-string v1, "/filter/mediatype/*/*"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 62
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/FilterSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    const-string v1, "/filter/delete/*"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 63
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/FilterSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    const-string v1, "/filter/empty/*"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 64
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/FilterSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    const-string v1, "/filter/empty_prompt"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 65
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/FilterSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    const-string v1, "/filter/camera_shortcut"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 66
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/FilterSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    const-string v1, "/filter/camera_shortcut_item"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 69
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/FilterSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    const-string v1, "/filter/delete/time/*"

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 72
    new-instance v0, Lcom/lenovo/scg/gallery3d/data/EmptyAlbumImage;

    const-string v1, "/filter/empty_prompt"

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/FilterSource;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/data/EmptyAlbumImage;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/app/GalleryApp;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/FilterSource;->mEmptyItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .line 73
    new-instance v0, Lcom/lenovo/scg/gallery3d/data/CameraShortcutImage;

    const-string v1, "/filter/camera_shortcut_item"

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/FilterSource;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/data/CameraShortcutImage;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/app/GalleryApp;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/FilterSource;->mCameraShortcutItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .line 74
    return-void
.end method


# virtual methods
.method public createMediaObject(Lcom/lenovo/scg/gallery3d/data/Path;)Lcom/lenovo/scg/gallery3d/data/MediaObject;
    .locals 8
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;

    .prologue
    const/4 v7, 0x0

    .line 81
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/FilterSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    invoke-virtual {v5, p1}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->match(Lcom/lenovo/scg/gallery3d/data/Path;)I

    move-result v1

    .line 82
    .local v1, "matchType":I
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/FilterSource;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-interface {v5}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v0

    .line 83
    .local v0, "dataManager":Lcom/lenovo/scg/gallery3d/data/DataManager;
    packed-switch v1, :pswitch_data_0

    .line 117
    :pswitch_0
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bad path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 85
    :pswitch_1
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/FilterSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    invoke-virtual {v5, v7}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v2

    .line 86
    .local v2, "mediaType":I
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/FilterSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->getVar(I)Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, "setsName":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaSetsFromString(Ljava/lang/String;)[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v3

    .line 88
    .local v3, "sets":[Lcom/lenovo/scg/gallery3d/data/MediaSet;
    new-instance v5, Lcom/lenovo/scg/gallery3d/data/FilterTypeSet;

    aget-object v6, v3, v7

    invoke-direct {v5, p1, v0, v6, v2}, Lcom/lenovo/scg/gallery3d/data/FilterTypeSet;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/data/DataManager;Lcom/lenovo/scg/gallery3d/data/MediaSet;I)V

    .line 113
    .end local v2    # "mediaType":I
    .end local v3    # "sets":[Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .end local v4    # "setsName":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 91
    :pswitch_2
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/FilterSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    invoke-virtual {v5, v7}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->getVar(I)Ljava/lang/String;

    move-result-object v4

    .line 92
    .restart local v4    # "setsName":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaSetsFromString(Ljava/lang/String;)[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v3

    .line 93
    .restart local v3    # "sets":[Lcom/lenovo/scg/gallery3d/data/MediaSet;
    new-instance v5, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;

    aget-object v6, v3, v7

    invoke-direct {v5, p1, v6}, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/data/MediaSet;)V

    goto :goto_0

    .line 96
    .end local v3    # "sets":[Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .end local v4    # "setsName":Ljava/lang/String;
    :pswitch_3
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/FilterSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    invoke-virtual {v5, v7}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->getVar(I)Ljava/lang/String;

    move-result-object v4

    .line 97
    .restart local v4    # "setsName":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaSetsFromString(Ljava/lang/String;)[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v3

    .line 98
    .restart local v3    # "sets":[Lcom/lenovo/scg/gallery3d/data/MediaSet;
    new-instance v5, Lcom/lenovo/scg/gallery3d/data/FilterEmptyPromptSet;

    aget-object v6, v3, v7

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/data/FilterSource;->mEmptyItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    invoke-direct {v5, p1, v6, v7}, Lcom/lenovo/scg/gallery3d/data/FilterEmptyPromptSet;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/data/MediaSet;Lcom/lenovo/scg/gallery3d/data/MediaItem;)V

    goto :goto_0

    .line 101
    .end local v3    # "sets":[Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .end local v4    # "setsName":Ljava/lang/String;
    :pswitch_4
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/FilterSource;->mEmptyItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    goto :goto_0

    .line 104
    :pswitch_5
    new-instance v5, Lcom/lenovo/scg/gallery3d/data/SingleItemAlbum;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/data/FilterSource;->mCameraShortcutItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    invoke-direct {v5, p1, v6}, Lcom/lenovo/scg/gallery3d/data/SingleItemAlbum;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/data/MediaItem;)V

    goto :goto_0

    .line 107
    :pswitch_6
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/FilterSource;->mCameraShortcutItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    goto :goto_0

    .line 111
    :pswitch_7
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/FilterSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    invoke-virtual {v5, v7}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->getVar(I)Ljava/lang/String;

    move-result-object v4

    .line 112
    .restart local v4    # "setsName":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaSetsFromString(Ljava/lang/String;)[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v3

    .line 113
    .restart local v3    # "sets":[Lcom/lenovo/scg/gallery3d/data/MediaSet;
    new-instance v5, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;

    aget-object v6, v3, v7

    invoke-direct {v5, p1, v6}, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/data/MediaSet;)V

    goto :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method
