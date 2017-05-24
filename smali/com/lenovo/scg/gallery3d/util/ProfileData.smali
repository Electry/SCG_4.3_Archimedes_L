.class public Lcom/lenovo/scg/gallery3d/util/ProfileData;
.super Ljava/lang/Object;
.source "ProfileData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/util/ProfileData$Node;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ProfileData"


# instance fields
.field private mNameToId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNextId:I

.field private mOut:Ljava/io/DataOutputStream;

.field private mRoot:Lcom/lenovo/scg/gallery3d/util/ProfileData$Node;

.field private mScratch:[B


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/util/ProfileData;->mScratch:[B

    .line 65
    new-instance v0, Lcom/lenovo/scg/gallery3d/util/ProfileData$Node;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/util/ProfileData$Node;-><init>(Lcom/lenovo/scg/gallery3d/util/ProfileData$Node;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/util/ProfileData;->mRoot:Lcom/lenovo/scg/gallery3d/util/ProfileData$Node;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/util/ProfileData;->mNameToId:Ljava/util/HashMap;

    .line 67
    return-void
.end method

.method private nameToId(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 76
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/util/ProfileData;->mNameToId:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 77
    .local v0, "id":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 78
    iget v1, p0, Lcom/lenovo/scg/gallery3d/util/ProfileData;->mNextId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/util/ProfileData;->mNextId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/util/ProfileData;->mNameToId:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private writeAllStacks(Lcom/lenovo/scg/gallery3d/util/ProfileData$Node;I)V
    .locals 4
    .param p1, "node"    # Lcom/lenovo/scg/gallery3d/util/ProfileData$Node;
    .param p2, "depth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    iget v2, p1, Lcom/lenovo/scg/gallery3d/util/ProfileData$Node;->sampleCount:I

    if-lez v2, :cond_0

    .line 152
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/util/ProfileData;->writeOneStack(Lcom/lenovo/scg/gallery3d/util/ProfileData$Node;I)V

    .line 155
    :cond_0
    iget-object v0, p1, Lcom/lenovo/scg/gallery3d/util/ProfileData$Node;->children:Ljava/util/ArrayList;

    .line 156
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/util/ProfileData$Node;>;"
    if-eqz v0, :cond_1

    .line 157
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 158
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/util/ProfileData$Node;

    add-int/lit8 v3, p2, 0x1

    invoke-direct {p0, v2, v3}, Lcom/lenovo/scg/gallery3d/util/ProfileData;->writeAllStacks(Lcom/lenovo/scg/gallery3d/util/ProfileData$Node;I)V

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private writeAllSymbols()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/util/ProfileData;->mNameToId:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 167
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/util/ProfileData;->mOut:Ljava/io/DataOutputStream;

    const-string v3, "0x%x %s\n"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto :goto_0

    .line 169
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    return-void
.end method

.method private writeInt(I)V
    .locals 3
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/util/ProfileData;->mScratch:[B

    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 173
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/util/ProfileData;->mScratch:[B

    const/4 v1, 0x1

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/util/ProfileData;->mScratch:[B

    const/4 v1, 0x2

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 175
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/util/ProfileData;->mScratch:[B

    const/4 v1, 0x3

    shr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 176
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/util/ProfileData;->mOut:Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/util/ProfileData;->mScratch:[B

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 177
    return-void
.end method

.method private writeOneStack(Lcom/lenovo/scg/gallery3d/util/ProfileData$Node;I)V
    .locals 2
    .param p1, "node"    # Lcom/lenovo/scg/gallery3d/util/ProfileData$Node;
    .param p2, "depth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    iget v1, p1, Lcom/lenovo/scg/gallery3d/util/ProfileData$Node;->sampleCount:I

    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/util/ProfileData;->writeInt(I)V

    .line 143
    invoke-direct {p0, p2}, Lcom/lenovo/scg/gallery3d/util/ProfileData;->writeInt(I)V

    move v0, p2

    .line 144
    .end local p2    # "depth":I
    .local v0, "depth":I
    :goto_0
    add-int/lit8 p2, v0, -0x1

    .end local v0    # "depth":I
    .restart local p2    # "depth":I
    if-lez v0, :cond_0

    .line 145
    iget v1, p1, Lcom/lenovo/scg/gallery3d/util/ProfileData$Node;->id:I

    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/util/ProfileData;->writeInt(I)V

    .line 146
    iget-object p1, p1, Lcom/lenovo/scg/gallery3d/util/ProfileData$Node;->parent:Lcom/lenovo/scg/gallery3d/util/ProfileData$Node;

    move v0, p2

    .end local p2    # "depth":I
    .restart local v0    # "depth":I
    goto :goto_0

    .line 148
    .end local v0    # "depth":I
    .restart local p2    # "depth":I
    :cond_0
    return-void
.end method


# virtual methods
.method public addSample([Ljava/lang/String;)V
    .locals 7
    .param p1, "stack"    # [Ljava/lang/String;

    .prologue
    .line 85
    array-length v6, p1

    new-array v3, v6, [I

    .line 86
    .local v3, "ids":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, p1

    if-ge v1, v6, :cond_0

    .line 87
    aget-object v6, p1, v1

    invoke-direct {p0, v6}, Lcom/lenovo/scg/gallery3d/util/ProfileData;->nameToId(Ljava/lang/String;)I

    move-result v6

    aput v6, v3, v1

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    :cond_0
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/util/ProfileData;->mRoot:Lcom/lenovo/scg/gallery3d/util/ProfileData$Node;

    .line 91
    .local v5, "node":Lcom/lenovo/scg/gallery3d/util/ProfileData$Node;
    array-length v6, p1

    add-int/lit8 v1, v6, -0x1

    :goto_1
    if-ltz v1, :cond_5

    .line 92
    iget-object v6, v5, Lcom/lenovo/scg/gallery3d/util/ProfileData$Node;->children:Ljava/util/ArrayList;

    if-nez v6, :cond_1

    .line 93
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Lcom/lenovo/scg/gallery3d/util/ProfileData$Node;->children:Ljava/util/ArrayList;

    .line 96
    :cond_1
    aget v2, v3, v1

    .line 97
    .local v2, "id":I
    iget-object v0, v5, Lcom/lenovo/scg/gallery3d/util/ProfileData$Node;->children:Ljava/util/ArrayList;

    .line 99
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/util/ProfileData$Node;>;"
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 100
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/scg/gallery3d/util/ProfileData$Node;

    iget v6, v6, Lcom/lenovo/scg/gallery3d/util/ProfileData$Node;->id:I

    if-ne v6, v2, :cond_4

    .line 102
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v4, v6, :cond_3

    .line 103
    new-instance v6, Lcom/lenovo/scg/gallery3d/util/ProfileData$Node;

    invoke-direct {v6, v5, v2}, Lcom/lenovo/scg/gallery3d/util/ProfileData$Node;-><init>(Lcom/lenovo/scg/gallery3d/util/ProfileData$Node;I)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_3
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "node":Lcom/lenovo/scg/gallery3d/util/ProfileData$Node;
    check-cast v5, Lcom/lenovo/scg/gallery3d/util/ProfileData$Node;

    .line 91
    .restart local v5    # "node":Lcom/lenovo/scg/gallery3d/util/ProfileData$Node;
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 99
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 109
    .end local v0    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/util/ProfileData$Node;>;"
    .end local v2    # "id":I
    .end local v4    # "j":I
    :cond_5
    iget v6, v5, Lcom/lenovo/scg/gallery3d/util/ProfileData$Node;->sampleCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/lenovo/scg/gallery3d/util/ProfileData$Node;->sampleCount:I

    .line 110
    return-void
.end method

.method public dumpToFile(Ljava/lang/String;)V
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 114
    :try_start_0
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/util/ProfileData;->mOut:Ljava/io/DataOutputStream;

    .line 116
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/util/ProfileData;->writeInt(I)V

    .line 117
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/util/ProfileData;->writeInt(I)V

    .line 118
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/util/ProfileData;->writeInt(I)V

    .line 119
    const/16 v1, 0x4e20

    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/util/ProfileData;->writeInt(I)V

    .line 120
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/util/ProfileData;->writeInt(I)V

    .line 123
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/util/ProfileData;->mRoot:Lcom/lenovo/scg/gallery3d/util/ProfileData$Node;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/lenovo/scg/gallery3d/util/ProfileData;->writeAllStacks(Lcom/lenovo/scg/gallery3d/util/ProfileData$Node;I)V

    .line 126
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/util/ProfileData;->writeInt(I)V

    .line 127
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/util/ProfileData;->writeInt(I)V

    .line 128
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/util/ProfileData;->writeInt(I)V

    .line 129
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/util/ProfileData;->writeAllSymbols()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/util/ProfileData;->mOut:Ljava/io/DataOutputStream;

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 135
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "ex":Ljava/io/IOException;
    :try_start_1
    const-string v1, "Failed to dump to file"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/util/ProfileData;->mOut:Ljava/io/DataOutputStream;

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/util/ProfileData;->mOut:Ljava/io/DataOutputStream;

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v1
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 70
    new-instance v0, Lcom/lenovo/scg/gallery3d/util/ProfileData$Node;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/util/ProfileData$Node;-><init>(Lcom/lenovo/scg/gallery3d/util/ProfileData$Node;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/util/ProfileData;->mRoot:Lcom/lenovo/scg/gallery3d/util/ProfileData$Node;

    .line 71
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/util/ProfileData;->mNameToId:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/util/ProfileData;->mNextId:I

    .line 73
    return-void
.end method
