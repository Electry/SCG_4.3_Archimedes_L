.class public Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;
.super Ljava/lang/Object;
.source "ImageListUber.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber$1;,
        Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber$MergeSlot;,
        Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber$DescendingComparator;,
        Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber$AscendingComparator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageListUber"


# instance fields
.field private mLastListIndex:I

.field private final mQueue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber$MergeSlot;",
            ">;"
        }
    .end annotation
.end field

.field private final mSkipCounts:[I

.field private mSkipList:[J

.field private mSkipListSize:I

.field private final mSubList:[Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;


# direct methods
.method public constructor <init>([Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;I)V
    .locals 8
    .param p1, "sublist"    # [Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;
    .param p2, "sort"    # I

    .prologue
    const/4 v7, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    invoke-virtual {p1}, [Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->mSubList:[Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    .line 117
    new-instance v5, Ljava/util/PriorityQueue;

    const/4 v6, 0x4

    const/4 v4, 0x1

    if-ne p2, v4, :cond_1

    new-instance v4, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber$AscendingComparator;

    invoke-direct {v4, v7}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber$AscendingComparator;-><init>(Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber$1;)V

    :goto_0
    invoke-direct {v5, v6, v4}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->mQueue:Ljava/util/PriorityQueue;

    .line 118
    const/16 v4, 0x10

    new-array v4, v4, [J

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->mSkipList:[J

    .line 119
    const/4 v4, 0x0

    iput v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->mSkipListSize:I

    .line 120
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->mSubList:[Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    array-length v4, v4

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->mSkipCounts:[I

    .line 121
    const/4 v4, -0x1

    iput v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->mLastListIndex:I

    .line 122
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v4}, Ljava/util/PriorityQueue;->clear()V

    .line 123
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->mSubList:[Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    array-length v2, v4

    .local v2, "n":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 124
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->mSubList:[Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    aget-object v1, v4, v0

    .line 125
    .local v1, "list":Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;
    new-instance v3, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber$MergeSlot;

    invoke-direct {v3, v1, v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber$MergeSlot;-><init>(Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;I)V

    .line 126
    .local v3, "slot":Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber$MergeSlot;
    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber$MergeSlot;->next()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v4, v3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 117
    .end local v0    # "i":I
    .end local v1    # "list":Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;
    .end local v2    # "n":I
    .end local v3    # "slot":Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber$MergeSlot;
    :cond_1
    new-instance v4, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber$DescendingComparator;

    invoke-direct {v4, v7}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber$DescendingComparator;-><init>(Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber$1;)V

    goto :goto_0

    .line 128
    .restart local v0    # "i":I
    .restart local v2    # "n":I
    :cond_2
    return-void
.end method

.method private modifySkipCountForDeletedImage(I)V
    .locals 10
    .param p1, "index"    # I

    .prologue
    .line 274
    const/4 v3, 0x0

    .line 275
    .local v3, "skipCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    iget v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->mSkipListSize:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 276
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->mSkipList:[J

    aget-wide v4, v6, v0

    .line 277
    .local v4, "v":J
    const-wide/16 v6, -0x1

    and-long/2addr v6, v4

    long-to-int v2, v6

    .line 278
    .local v2, "offset":I
    add-int v6, v3, v2

    if-le v6, p1, :cond_1

    .line 279
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->mSkipList:[J

    const-wide/16 v8, 0x1

    sub-long v8, v4, v8

    aput-wide v8, v6, v0

    .line 284
    .end local v2    # "offset":I
    .end local v4    # "v":J
    :cond_0
    return-void

    .line 282
    .restart local v2    # "offset":I
    .restart local v4    # "v":J
    :cond_1
    add-int/2addr v3, v2

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private nextMergeSlot()Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber$MergeSlot;
    .locals 10

    .prologue
    const-wide/16 v8, 0x1

    const/4 v5, 0x0

    .line 287
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber$MergeSlot;

    .line 288
    .local v1, "slot":Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber$MergeSlot;
    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 301
    .end local v1    # "slot":Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber$MergeSlot;
    :goto_0
    return-object v1

    .line 289
    .restart local v1    # "slot":Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber$MergeSlot;
    :cond_0
    iget v3, v1, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber$MergeSlot;->mListIndex:I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->mLastListIndex:I

    if-ne v3, v4, :cond_1

    .line 290
    iget v3, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->mSkipListSize:I

    add-int/lit8 v0, v3, -0x1

    .line 291
    .local v0, "lastIndex":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->mSkipList:[J

    aget-wide v4, v3, v0

    add-long/2addr v4, v8

    aput-wide v4, v3, v0

    goto :goto_0

    .line 293
    .end local v0    # "lastIndex":I
    :cond_1
    iget v3, v1, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber$MergeSlot;->mListIndex:I

    iput v3, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->mLastListIndex:I

    .line 294
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->mSkipList:[J

    array-length v3, v3

    iget v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->mSkipListSize:I

    if-ne v3, v4, :cond_2

    .line 295
    iget v3, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->mSkipListSize:I

    mul-int/lit8 v3, v3, 0x2

    new-array v2, v3, [J

    .line 296
    .local v2, "temp":[J
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->mSkipList:[J

    iget v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->mSkipListSize:I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->mSkipList:[J

    .line 299
    .end local v2    # "temp":[J
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->mSkipList:[J

    iget v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->mSkipListSize:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->mSkipListSize:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->mLastListIndex:I

    int-to-long v6, v5

    const/16 v5, 0x20

    shl-long/2addr v6, v5

    or-long/2addr v6, v8

    aput-wide v6, v3, v4

    goto :goto_0
.end method

.method private removeImage(Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;I)Z
    .locals 2
    .param p1, "image"    # Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;
    .param p2, "index"    # I

    .prologue
    .line 305
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;->getContainer()Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    move-result-object v0

    .line 306
    .local v0, "list":Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;->removeImage(Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    invoke-direct {p0, p2}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->modifySkipCountForDeletedImage(I)V

    .line 308
    const/4 v1, 0x1

    .line 310
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 137
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->mSubList:[Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    array-length v1, v2

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 138
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->mSubList:[Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;->close()V

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_0
    return-void
.end method

.method public getBucketIds()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 145
    .local v1, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->mSubList:[Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    .local v0, "arr$":[Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 146
    .local v4, "list":Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;
    invoke-interface {v4}, Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;->getBucketIds()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 145
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 148
    .end local v4    # "list":Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;
    :cond_0
    return-object v1
.end method

.method public getCount()I
    .locals 6

    .prologue
    .line 153
    const/4 v1, 0x0

    .line 154
    .local v1, "count":I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->mSubList:[Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    .local v0, "arr$":[Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 155
    .local v4, "subList":Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;
    invoke-interface {v4}, Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;->getCount()I

    move-result v5

    add-int/2addr v1, v5

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    .end local v4    # "subList":Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;
    :cond_0
    return v1
.end method

.method public getImageAt(I)Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;
    .locals 14
    .param p1, "index"    # I

    .prologue
    .line 162
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->getCount()I

    move-result v11

    if-le p1, v11, :cond_1

    .line 163
    :cond_0
    new-instance v11, Ljava/lang/IndexOutOfBoundsException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "index "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " out of range max is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->getCount()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 166
    :cond_1
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->mSkipCounts:[I

    .line 169
    .local v5, "skipCounts":[I
    const/4 v11, 0x0

    invoke-static {v5, v11}, Ljava/util/Arrays;->fill([II)V

    .line 175
    const/4 v4, 0x0

    .line 179
    .local v4, "skipCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    iget v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->mSkipListSize:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_6

    .line 180
    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->mSkipList:[J

    aget-wide v8, v11, v0

    .line 182
    .local v8, "v":J
    const-wide/16 v12, -0x1

    and-long/2addr v12, v8

    long-to-int v2, v12

    .line 183
    .local v2, "offset":I
    const/16 v11, 0x20

    shr-long v12, v8, v11

    long-to-int v10, v12

    .line 184
    .local v10, "which":I
    add-int v11, v4, v2

    if-le v11, p1, :cond_3

    .line 185
    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->mSkipCounts:[I

    aget v11, v11, v10

    sub-int v12, p1, v4

    add-int v7, v11, v12

    .line 186
    .local v7, "subindex":I
    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->mSubList:[Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    aget-object v11, v11, v10

    invoke-interface {v11, v7}, Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;->getImageAt(I)Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;

    move-result-object v3

    .line 198
    .end local v2    # "offset":I
    .end local v7    # "subindex":I
    .end local v8    # "v":J
    .end local v10    # "which":I
    :cond_2
    :goto_1
    return-object v3

    .line 188
    .restart local v2    # "offset":I
    .restart local v8    # "v":J
    .restart local v10    # "which":I
    :cond_3
    add-int/2addr v4, v2

    .line 189
    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->mSkipCounts:[I

    aget v12, v11, v10

    add-int/2addr v12, v2

    aput v12, v11, v10

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    .end local v2    # "offset":I
    .end local v8    # "v":J
    .end local v10    # "which":I
    .local v6, "slot":Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber$MergeSlot;
    :cond_4
    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber$MergeSlot;->next()Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v11, v6}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 193
    .end local v6    # "slot":Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber$MergeSlot;
    :cond_6
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->nextMergeSlot()Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber$MergeSlot;

    move-result-object v6

    .line 194
    .restart local v6    # "slot":Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber$MergeSlot;
    if-nez v6, :cond_7

    const/4 v3, 0x0

    goto :goto_1

    .line 195
    :cond_7
    if-ne v4, p1, :cond_4

    .line 196
    iget-object v3, v6, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber$MergeSlot;->mImage:Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;

    .line 197
    .local v3, "result":Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;
    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber$MergeSlot;->next()Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v11, v6}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getImageForUri(Landroid/net/Uri;)Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->mSubList:[Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    .local v0, "arr$":[Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .line 207
    .local v4, "sublist":Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;
    invoke-interface {v4, p1}, Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;->getImageForUri(Landroid/net/Uri;)Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;

    move-result-object v2

    .line 208
    .local v2, "image":Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;
    if-eqz v2, :cond_0

    .line 210
    .end local v2    # "image":Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;
    .end local v4    # "sublist":Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;
    :goto_1
    return-object v2

    .line 206
    .restart local v2    # "image":Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;
    .restart local v4    # "sublist":Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    .end local v2    # "image":Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;
    .end local v4    # "sublist":Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public declared-synchronized getImageIndex(Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;)I
    .locals 14
    .param p1, "image"    # Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;

    .prologue
    const/4 v11, -0x1

    .line 215
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;->getContainer()Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    move-result-object v1

    .line 216
    .local v1, "list":Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;
    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->mSubList:[Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    invoke-static {v12, v1}, Lcom/lenovo/scg/common/utils/bitmap/BoxCtrolUtil;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 217
    .local v2, "listIndex":I
    if-ne v2, v11, :cond_0

    .line 218
    new-instance v11, Ljava/lang/IllegalArgumentException;

    invoke-direct {v11}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    .end local v1    # "list":Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;
    .end local v2    # "listIndex":I
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 220
    .restart local v1    # "list":Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;
    .restart local v2    # "listIndex":I
    :cond_0
    :try_start_1
    invoke-interface {v1, p1}, Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;->getImageIndex(Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;)I

    move-result v3

    .line 223
    .local v3, "listOffset":I
    const/4 v6, 0x0

    .line 224
    .local v6, "skipCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    iget v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->mSkipListSize:I

    .local v4, "n":I
    :goto_0
    if-ge v0, v4, :cond_6

    .line 225
    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->mSkipList:[J

    aget-wide v8, v12, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    .local v8, "value":J
    const-wide/16 v12, -0x1

    and-long/2addr v12, v8

    long-to-int v5, v12

    .line 227
    .local v5, "offset":I
    const/16 v12, 0x20

    shr-long v12, v8, v12

    long-to-int v10, v12

    .line 228
    .local v10, "which":I
    if-ne v10, v2, :cond_3

    .line 229
    if-ge v3, v5, :cond_2

    .line 230
    add-int v11, v6, v3

    .line 242
    .end local v5    # "offset":I
    .end local v8    # "value":J
    .end local v10    # "which":I
    :cond_1
    :goto_1
    monitor-exit p0

    return v11

    .line 232
    .restart local v5    # "offset":I
    .restart local v8    # "value":J
    .restart local v10    # "which":I
    :cond_2
    sub-int/2addr v3, v5

    .line 234
    :cond_3
    add-int/2addr v6, v5

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 244
    .end local v5    # "offset":I
    .end local v8    # "value":J
    .end local v10    # "which":I
    .local v7, "slot":Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber$MergeSlot;
    :cond_4
    :try_start_2
    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber$MergeSlot;->next()Z

    move-result v12

    if-eqz v12, :cond_5

    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v12, v7}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 238
    .end local v7    # "slot":Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber$MergeSlot;
    :cond_6
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->nextMergeSlot()Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber$MergeSlot;

    move-result-object v7

    .line 239
    .restart local v7    # "slot":Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber$MergeSlot;
    if-eqz v7, :cond_1

    .line 240
    iget-object v12, v7, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber$MergeSlot;->mImage:Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;

    if-ne v12, p1, :cond_4

    .line 241
    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber$MergeSlot;->next()Z

    move-result v11

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v11, v7}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    move v11, v6

    .line 242
    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 5

    .prologue
    .line 250
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->mSubList:[Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    .local v0, "arr$":[Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 251
    .local v3, "subList":Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;
    invoke-interface {v3}, Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    .line 253
    .end local v3    # "subList":Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;
    :goto_1
    return v4

    .line 250
    .restart local v3    # "subList":Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 253
    .end local v3    # "subList":Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public removeImage(Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;)Z
    .locals 1
    .param p1, "image"    # Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;

    .prologue
    .line 258
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->getImageIndex(Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->removeImage(Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;I)Z

    move-result v0

    return v0
.end method

.method public removeImageAt(I)Z
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 263
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->getImageAt(I)Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;

    move-result-object v0

    .line 264
    .local v0, "image":Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 265
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;->removeImage(Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;I)Z

    move-result v1

    goto :goto_0
.end method
