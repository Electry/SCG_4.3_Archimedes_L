.class public Lcom/lenovo/scg/gallery3d/data/Path;
.super Ljava/lang/Object;
.source "Path.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Path"

.field private static sRoot:Lcom/lenovo/scg/gallery3d/data/Path;


# instance fields
.field private mChildren:Lcom/lenovo/scg/gallery3d/util/IdentityCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/scg/gallery3d/util/IdentityCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/lenovo/scg/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private mObject:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/MediaObject;",
            ">;"
        }
    .end annotation
.end field

.field private final mParent:Lcom/lenovo/scg/gallery3d/data/Path;

.field private final mSegment:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Lcom/lenovo/scg/gallery3d/data/Path;

    const/4 v1, 0x0

    const-string v2, "ROOT"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/data/Path;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;Ljava/lang/String;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/data/Path;->sRoot:Lcom/lenovo/scg/gallery3d/data/Path;

    return-void
.end method

.method private constructor <init>(Lcom/lenovo/scg/gallery3d/data/Path;Ljava/lang/String;)V
    .locals 0
    .param p1, "parent"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p2, "segment"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/data/Path;->mParent:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 43
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/data/Path;->mSegment:Ljava/lang/String;

    .line 44
    return-void
.end method

.method static clearAll()V
    .locals 4

    .prologue
    .line 221
    const-class v1, Lcom/lenovo/scg/gallery3d/data/Path;

    monitor-enter v1

    .line 222
    :try_start_0
    new-instance v0, Lcom/lenovo/scg/gallery3d/data/Path;

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {v0, v2, v3}, Lcom/lenovo/scg/gallery3d/data/Path;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;Ljava/lang/String;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/data/Path;->sRoot:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 223
    monitor-exit v1

    .line 224
    return-void

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static dumpAll()V
    .locals 3

    .prologue
    .line 227
    sget-object v0, Lcom/lenovo/scg/gallery3d/data/Path;->sRoot:Lcom/lenovo/scg/gallery3d/data/Path;

    const-string v1, ""

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/data/Path;->dumpAll(Lcom/lenovo/scg/gallery3d/data/Path;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method static dumpAll(Lcom/lenovo/scg/gallery3d/data/Path;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p0, "p"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p1, "prefix1"    # Ljava/lang/String;
    .param p2, "prefix2"    # Ljava/lang/String;

    .prologue
    .line 231
    const-class v8, Lcom/lenovo/scg/gallery3d/data/Path;

    monitor-enter v8

    .line 232
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/Path;->getObject()Lcom/lenovo/scg/gallery3d/data/MediaObject;

    move-result-object v6

    .line 233
    .local v6, "obj":Lcom/lenovo/scg/gallery3d/data/MediaObject;
    const-string v9, "Path"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/data/Path;->mSegment:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ":"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v6, :cond_0

    const-string/jumbo v7, "null"

    :goto_0
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/data/Path;->mChildren:Lcom/lenovo/scg/gallery3d/util/IdentityCache;

    if-eqz v7, :cond_3

    .line 235
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/data/Path;->mChildren:Lcom/lenovo/scg/gallery3d/util/IdentityCache;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/util/IdentityCache;->keys()Ljava/util/ArrayList;

    move-result-object v1

    .line 236
    .local v1, "childrenKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 237
    .local v5, "n":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 238
    .local v4, "key":Ljava/lang/String;
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/data/Path;->mChildren:Lcom/lenovo/scg/gallery3d/util/IdentityCache;

    invoke-virtual {v7, v4}, Lcom/lenovo/scg/gallery3d/util/IdentityCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/data/Path;

    .line 239
    .local v0, "child":Lcom/lenovo/scg/gallery3d/data/Path;
    if-nez v0, :cond_1

    .line 240
    add-int/lit8 v2, v2, 0x1

    .line 241
    goto :goto_1

    .line 233
    .end local v0    # "child":Lcom/lenovo/scg/gallery3d/data/Path;
    .end local v1    # "childrenKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "n":I
    :cond_0
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 243
    .restart local v0    # "child":Lcom/lenovo/scg/gallery3d/data/Path;
    .restart local v1    # "childrenKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2    # "i":I
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "n":I
    :cond_1
    const-string v7, "Path"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v5, :cond_2

    .line 245
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "+-- "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "|   "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v7, v9}, Lcom/lenovo/scg/gallery3d/data/Path;->dumpAll(Lcom/lenovo/scg/gallery3d/data/Path;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 251
    .end local v0    # "child":Lcom/lenovo/scg/gallery3d/data/Path;
    .end local v1    # "childrenKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "n":I
    .end local v6    # "obj":Lcom/lenovo/scg/gallery3d/data/MediaObject;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 247
    .restart local v0    # "child":Lcom/lenovo/scg/gallery3d/data/Path;
    .restart local v1    # "childrenKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2    # "i":I
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "n":I
    .restart local v6    # "obj":Lcom/lenovo/scg/gallery3d/data/MediaObject;
    :cond_2
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "+-- "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "    "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v7, v9}, Lcom/lenovo/scg/gallery3d/data/Path;->dumpAll(Lcom/lenovo/scg/gallery3d/data/Path;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 251
    .end local v0    # "child":Lcom/lenovo/scg/gallery3d/data/Path;
    .end local v1    # "childrenKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "n":I
    :cond_3
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/Path;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 114
    const-class v4, Lcom/lenovo/scg/gallery3d/data/Path;

    monitor-enter v4

    .line 115
    :try_start_0
    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/data/Path;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "segments":[Ljava/lang/String;
    sget-object v0, Lcom/lenovo/scg/gallery3d/data/Path;->sRoot:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 117
    .local v0, "current":Lcom/lenovo/scg/gallery3d/data/Path;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 118
    aget-object v3, v2, v1

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v0

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 120
    :cond_0
    monitor-exit v4

    return-object v0

    .line 121
    .end local v0    # "current":Lcom/lenovo/scg/gallery3d/data/Path;
    .end local v1    # "i":I
    .end local v2    # "segments":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x2f

    const/4 v7, 0x0

    .line 140
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 141
    .local v4, "n":I
    if-nez v4, :cond_0

    new-array v5, v7, [Ljava/lang/String;

    .line 164
    :goto_0
    return-object v5

    .line 142
    :cond_0
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v8, :cond_1

    .line 143
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "malformed path:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 145
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v6, "segments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 147
    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_7

    .line 148
    const/4 v0, 0x0

    .line 150
    .local v0, "brace":I
    move v3, v2

    .local v3, "j":I
    :goto_2
    if-ge v3, v4, :cond_5

    .line 151
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 152
    .local v1, "c":C
    const/16 v7, 0x7b

    if-ne v1, v7, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 150
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 153
    :cond_3
    const/16 v7, 0x7d

    if-ne v1, v7, :cond_4

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 154
    :cond_4
    if-nez v0, :cond_2

    if-ne v1, v8, :cond_2

    .line 156
    .end local v1    # "c":C
    :cond_5
    if-eqz v0, :cond_6

    .line 157
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unbalanced brace in path:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 159
    :cond_6
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    add-int/lit8 v2, v3, 0x1

    .line 161
    goto :goto_1

    .line 162
    .end local v0    # "brace":I
    .end local v3    # "j":I
    :cond_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 163
    .local v5, "result":[Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0
.end method

.method public static splitSequence(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x7d

    const/16 v8, 0x7b

    .line 170
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 171
    .local v4, "n":I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_0

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v9, :cond_1

    .line 172
    :cond_0
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bad sequence: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 174
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v6, "segments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 176
    .local v2, "i":I
    :goto_0
    add-int/lit8 v7, v4, -0x1

    if-ge v2, v7, :cond_7

    .line 177
    const/4 v0, 0x0

    .line 179
    .local v0, "brace":I
    move v3, v2

    .local v3, "j":I
    :goto_1
    add-int/lit8 v7, v4, -0x1

    if-ge v3, v7, :cond_5

    .line 180
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 181
    .local v1, "c":C
    if-ne v1, v8, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 179
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 182
    :cond_3
    if-ne v1, v9, :cond_4

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 183
    :cond_4
    if-nez v0, :cond_2

    const/16 v7, 0x2c

    if-ne v1, v7, :cond_2

    .line 185
    .end local v1    # "c":C
    :cond_5
    if-eqz v0, :cond_6

    .line 186
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unbalanced brace in path:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 188
    :cond_6
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    add-int/lit8 v2, v3, 0x1

    .line 190
    goto :goto_0

    .line 191
    .end local v0    # "brace":I
    .end local v3    # "j":I
    :cond_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 192
    .local v5, "result":[Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 193
    return-object v5
.end method


# virtual methods
.method public equalsIgnoreCase(Ljava/lang/String;)Z
    .locals 2
    .param p1, "p"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "path":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public getChild(I)Lcom/lenovo/scg/gallery3d/data/Path;
    .locals 1
    .param p1, "segment"    # I

    .prologue
    .line 68
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v0

    return-object v0
.end method

.method public getChild(J)Lcom/lenovo/scg/gallery3d/data/Path;
    .locals 1
    .param p1, "segment"    # J

    .prologue
    .line 72
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v0

    return-object v0
.end method

.method public getChild(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/Path;
    .locals 4
    .param p1, "segment"    # Ljava/lang/String;

    .prologue
    .line 47
    const-class v3, Lcom/lenovo/scg/gallery3d/data/Path;

    monitor-enter v3

    .line 48
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/Path;->mChildren:Lcom/lenovo/scg/gallery3d/util/IdentityCache;

    if-nez v2, :cond_1

    .line 49
    new-instance v2, Lcom/lenovo/scg/gallery3d/util/IdentityCache;

    invoke-direct {v2}, Lcom/lenovo/scg/gallery3d/util/IdentityCache;-><init>()V

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/data/Path;->mChildren:Lcom/lenovo/scg/gallery3d/util/IdentityCache;

    .line 55
    :cond_0
    new-instance v0, Lcom/lenovo/scg/gallery3d/data/Path;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/scg/gallery3d/data/Path;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;Ljava/lang/String;)V

    .line 56
    .local v0, "p":Lcom/lenovo/scg/gallery3d/data/Path;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/Path;->mChildren:Lcom/lenovo/scg/gallery3d/util/IdentityCache;

    invoke-virtual {v2, p1, v0}, Lcom/lenovo/scg/gallery3d/util/IdentityCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    monitor-exit v3

    move-object v1, v0

    .end local v0    # "p":Lcom/lenovo/scg/gallery3d/data/Path;
    .local v1, "p":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 51
    .end local v1    # "p":Ljava/lang/Object;
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/Path;->mChildren:Lcom/lenovo/scg/gallery3d/util/IdentityCache;

    invoke-virtual {v2, p1}, Lcom/lenovo/scg/gallery3d/util/IdentityCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/data/Path;

    .line 52
    .restart local v0    # "p":Lcom/lenovo/scg/gallery3d/data/Path;
    if-eqz v0, :cond_0

    monitor-exit v3

    move-object v1, v0

    .restart local v1    # "p":Ljava/lang/Object;
    goto :goto_0

    .line 58
    .end local v0    # "p":Lcom/lenovo/scg/gallery3d/data/Path;
    .end local v1    # "p":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getObject()Lcom/lenovo/scg/gallery3d/data/MediaObject;
    .locals 2

    .prologue
    .line 89
    const-class v1, Lcom/lenovo/scg/gallery3d/data/Path;

    monitor-enter v1

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/data/MediaObject;

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getParent()Lcom/lenovo/scg/gallery3d/data/Path;
    .locals 2

    .prologue
    .line 62
    const-class v1, Lcom/lenovo/scg/gallery3d/data/Path;

    monitor-enter v1

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/Path;->mParent:Lcom/lenovo/scg/gallery3d/data/Path;

    monitor-exit v1

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    sget-object v0, Lcom/lenovo/scg/gallery3d/data/Path;->sRoot:Lcom/lenovo/scg/gallery3d/data/Path;

    if-ne p0, v0, :cond_0

    const-string v0, ""

    .line 198
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/Path;->getPrefixPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/Path;->mSegment:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPrefixPath()Lcom/lenovo/scg/gallery3d/data/Path;
    .locals 4

    .prologue
    .line 202
    const-class v2, Lcom/lenovo/scg/gallery3d/data/Path;

    monitor-enter v2

    .line 203
    move-object v0, p0

    .line 204
    .local v0, "current":Lcom/lenovo/scg/gallery3d/data/Path;
    :try_start_0
    sget-object v1, Lcom/lenovo/scg/gallery3d/data/Path;->sRoot:Lcom/lenovo/scg/gallery3d/data/Path;

    if-ne v0, v1, :cond_0

    .line 205
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 211
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 207
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/data/Path;->mParent:Lcom/lenovo/scg/gallery3d/data/Path;

    sget-object v3, Lcom/lenovo/scg/gallery3d/data/Path;->sRoot:Lcom/lenovo/scg/gallery3d/data/Path;

    if-eq v1, v3, :cond_1

    .line 208
    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/Path;->mParent:Lcom/lenovo/scg/gallery3d/data/Path;

    goto :goto_0

    .line 210
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/Path;->mSegment:Ljava/lang/String;

    return-object v0
.end method

.method public setObject(Lcom/lenovo/scg/gallery3d/data/MediaObject;)V
    .locals 2
    .param p1, "object"    # Lcom/lenovo/scg/gallery3d/data/MediaObject;

    .prologue
    .line 76
    const-class v1, Lcom/lenovo/scg/gallery3d/data/Path;

    monitor-enter v1

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    monitor-exit v1

    .line 86
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->assertTrue(Z)V

    .line 84
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    .line 85
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 83
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public split()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 125
    const-class v6, Lcom/lenovo/scg/gallery3d/data/Path;

    monitor-enter v6

    .line 126
    const/4 v2, 0x0

    .line 127
    .local v2, "n":I
    move-object v3, p0

    .local v3, "p":Lcom/lenovo/scg/gallery3d/data/Path;
    :goto_0
    :try_start_0
    sget-object v5, Lcom/lenovo/scg/gallery3d/data/Path;->sRoot:Lcom/lenovo/scg/gallery3d/data/Path;

    if-eq v3, v5, :cond_0

    .line 128
    add-int/lit8 v2, v2, 0x1

    .line 127
    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/data/Path;->mParent:Lcom/lenovo/scg/gallery3d/data/Path;

    goto :goto_0

    .line 130
    :cond_0
    new-array v4, v2, [Ljava/lang/String;

    .line 131
    .local v4, "segments":[Ljava/lang/String;
    add-int/lit8 v0, v2, -0x1

    .line 132
    .local v0, "i":I
    move-object v3, p0

    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_1
    sget-object v5, Lcom/lenovo/scg/gallery3d/data/Path;->sRoot:Lcom/lenovo/scg/gallery3d/data/Path;

    if-eq v3, v5, :cond_1

    .line 133
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget-object v5, v3, Lcom/lenovo/scg/gallery3d/data/Path;->mSegment:Ljava/lang/String;

    aput-object v5, v4, v1

    .line 132
    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/data/Path;->mParent:Lcom/lenovo/scg/gallery3d/data/Path;

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 135
    :cond_1
    monitor-exit v6

    return-object v4

    .line 136
    .end local v1    # "i":I
    .end local v4    # "segments":[Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 97
    const-class v4, Lcom/lenovo/scg/gallery3d/data/Path;

    monitor-enter v4

    .line 98
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/Path;->split()[Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "segments":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 101
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    monitor-exit v4

    return-object v3

    .line 105
    .end local v0    # "i":I
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "segments":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
