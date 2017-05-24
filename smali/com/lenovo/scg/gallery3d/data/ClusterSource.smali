.class Lcom/lenovo/scg/gallery3d/data/ClusterSource;
.super Lcom/lenovo/scg/gallery3d/data/MediaSource;
.source "ClusterSource.java"


# static fields
.field static final CLUSTER_ALBUMSET_LOCATION:I = 0x1

.field static final CLUSTER_ALBUMSET_SIZE:I = 0x3

.field static final CLUSTER_ALBUMSET_TAG:I = 0x2

.field static final CLUSTER_ALBUMSET_TIME:I = 0x0

.field static final CLUSTER_ALBUMSET_TIMEALL_FORCAMERA:I = 0x9

.field static final CLUSTER_ALBUM_FACE:I = 0x104

.field static final CLUSTER_ALBUM_LANDSCAPE:I = 0x106

.field static final CLUSTER_ALBUM_LOCATION:I = 0x101

.field static final CLUSTER_ALBUM_SIZE:I = 0x103

.field static final CLUSTER_ALBUM_TAG:I = 0x102

.field static final CLUSTER_ALBUM_TIME:I = 0x100

.field static final CLUSTER_ALBUM_TIMEALL_FORCAMERA:I = 0x109

.field static final CLUSTER_FACE_AUTO_GROUP:I = 0x105

.field static final CLUSTER_FACE_GROUP_RENAME:I = 0x108

.field static final CLUSTER_FACE_ONLY_GROUP:I = 0x107


# instance fields
.field mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

.field mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/app/GalleryApp;)V
    .locals 3
    .param p1, "application"    # Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    .prologue
    .line 58
    const-string v0, "cluster"

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 59
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/data/ClusterSource;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    .line 60
    new-instance v0, Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ClusterSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    .line 61
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ClusterSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    const-string v1, "/cluster/*/time"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 62
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ClusterSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    const-string v1, "/cluster/*/location"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 63
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ClusterSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    const-string v1, "/cluster/*/tag"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 64
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ClusterSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    const-string v1, "/cluster/*/size"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 66
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ClusterSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    const-string v1, "/cluster/*/time_all"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 69
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ClusterSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    const-string v1, "/cluster/*/time/*"

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 70
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ClusterSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    const-string v1, "/cluster/*/location/*"

    const/16 v2, 0x101

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 71
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ClusterSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    const-string v1, "/cluster/*/tag/*"

    const/16 v2, 0x102

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 72
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ClusterSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    const-string v1, "/cluster/*/size/*"

    const/16 v2, 0x103

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 73
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ClusterSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    const-string v1, "/cluster/*/face/*"

    const/16 v2, 0x104

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 75
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ClusterSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    const-string v1, "/cluster/*/face_group/*"

    const/16 v2, 0x105

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 76
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ClusterSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    const-string v1, "/cluster/*/landscape/*"

    const/16 v2, 0x106

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 77
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ClusterSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    const-string v1, "/cluster/*/face_only_group/*"

    const/16 v2, 0x107

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 78
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ClusterSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    const-string v1, "/cluster/*/face_group_rename/*"

    const/16 v2, 0x108

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 79
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ClusterSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    const-string v1, "/cluster/*/time_all/*"

    const/16 v2, 0x109

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 80
    return-void
.end method


# virtual methods
.method public createMediaObject(Lcom/lenovo/scg/gallery3d/data/Path;)Lcom/lenovo/scg/gallery3d/data/MediaObject;
    .locals 8
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;

    .prologue
    const/4 v7, 0x0

    .line 89
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/ClusterSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    invoke-virtual {v5, p1}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->match(Lcom/lenovo/scg/gallery3d/data/Path;)I

    move-result v1

    .line 90
    .local v1, "matchType":I
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/ClusterSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    invoke-virtual {v5, v7}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->getVar(I)Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, "setsName":Ljava/lang/String;
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/ClusterSource;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-interface {v5}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v0

    .line 92
    .local v0, "dataManager":Lcom/lenovo/scg/gallery3d/data/DataManager;
    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaSetsFromString(Ljava/lang/String;)[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v3

    .line 93
    .local v3, "sets":[Lcom/lenovo/scg/gallery3d/data/MediaSet;
    sparse-switch v1, :sswitch_data_0

    .line 117
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

    .line 99
    :sswitch_0
    new-instance v5, Lcom/lenovo/scg/gallery3d/data/ClusterAlbumSet;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/data/ClusterSource;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    aget-object v7, v3, v7

    invoke-direct {v5, p1, v6, v7, v1}, Lcom/lenovo/scg/gallery3d/data/ClusterAlbumSet;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/app/GalleryApp;Lcom/lenovo/scg/gallery3d/data/MediaSet;I)V

    .line 114
    :goto_0
    return-object v5

    .line 111
    :sswitch_1
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/data/Path;->getParent()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaSet(Lcom/lenovo/scg/gallery3d/data/Path;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v2

    .line 114
    .local v2, "parent":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    new-instance v5, Lcom/lenovo/scg/gallery3d/data/ClusterAlbum;

    invoke-direct {v5, p1, v0, v2}, Lcom/lenovo/scg/gallery3d/data/ClusterAlbum;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/data/DataManager;Lcom/lenovo/scg/gallery3d/data/MediaSet;)V

    goto :goto_0

    .line 93
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x9 -> :sswitch_0
        0x100 -> :sswitch_1
        0x101 -> :sswitch_1
        0x102 -> :sswitch_1
        0x103 -> :sswitch_1
        0x104 -> :sswitch_1
        0x105 -> :sswitch_1
        0x106 -> :sswitch_1
        0x107 -> :sswitch_1
        0x108 -> :sswitch_1
        0x109 -> :sswitch_1
    .end sparse-switch
.end method
