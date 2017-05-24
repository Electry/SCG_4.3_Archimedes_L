.class public Lcom/lenovo/scg/common/utils/file/ZipUtils;
.super Ljava/lang/Object;
.source "ZipUtils.java"


# static fields
.field private static final BUFF_SIZE:I = 0x100000

.field private static final TAG:Ljava/lang/String; = "ZipUtils"

.field private static mlistTargetABI:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static GetTargetABIlist()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    sget-object v0, Lcom/lenovo/scg/common/utils/file/ZipUtils;->mlistTargetABI:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static MakeDirIfNeed(Ljava/lang/String;)Z
    .locals 5
    .param p0, "PathName"    # Ljava/lang/String;

    .prologue
    .line 601
    const/4 v0, 0x0

    .line 602
    .local v0, "bRet":Z
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 603
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 604
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v0

    .line 605
    if-eqz v0, :cond_0

    .line 606
    const-string v2, "ZipUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u521b\u5efa"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u6210\u529f!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :goto_0
    return v0

    .line 608
    :cond_0
    const-string v2, "ZipUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u521b\u5efa"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u5931\u8d25!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 611
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static UnzipLibsInApk(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16
    .param p0, "zf"    # Ljava/util/zip/ZipFile;
    .param p1, "strAPKpathName"    # Ljava/lang/String;
    .param p2, "strDataDataPkgNameSCGLib"    # Ljava/lang/String;

    .prologue
    .line 670
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 671
    .local v8, "t1":J
    const/4 v2, 0x1

    .line 678
    .local v2, "bRet":Z
    invoke-static/range {p2 .. p2}, Lcom/lenovo/scg/common/utils/file/ZipUtils;->MakeDirIfNeed(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 680
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 681
    .local v7, "zipFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->canRead()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 683
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/lenovo/scg/common/utils/file/ZipUtils;->getABIDirsUnderLib(Ljava/util/zip/ZipFile;)Ljava/util/ArrayList;

    move-result-object v12

    sput-object v12, Lcom/lenovo/scg/common/utils/file/ZipUtils;->mlistTargetABI:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 689
    :goto_0
    sget-object v12, Lcom/lenovo/scg/common/utils/file/ZipUtils;->mlistTargetABI:Ljava/util/ArrayList;

    if-eqz v12, :cond_1

    .line 691
    new-instance v4, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/UnzipingLibs"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v4, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 693
    .local v4, "fileUnziping":Ljava/io/File;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 698
    :goto_1
    sget-object v12, Lcom/lenovo/scg/common/utils/file/ZipUtils;->mlistTargetABI:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 699
    .local v6, "nABI":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v6, :cond_0

    .line 700
    sget-object v12, Lcom/lenovo/scg/common/utils/file/ZipUtils;->mlistTargetABI:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1, v12}, Lcom/lenovo/scg/common/utils/file/ZipUtils;->UnzipSpecialABI_Libs(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    and-int/2addr v2, v12

    .line 699
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 694
    .end local v5    # "i":I
    .end local v6    # "nABI":I
    :catch_0
    move-exception v3

    .line 695
    .local v3, "e":Ljava/io/IOException;
    const-string v12, "ZipUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "\u521b\u5efa\u6587\u4ef6"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\u5931\u8d25"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 703
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v5    # "i":I
    .restart local v6    # "nABI":I
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 712
    .end local v4    # "fileUnziping":Ljava/io/File;
    .end local v5    # "i":I
    .end local v6    # "nABI":I
    .end local v7    # "zipFile":Ljava/io/File;
    :cond_1
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 713
    .local v10, "t2":J
    const-string v12, "ZipUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "UnzipLibsInApk used time: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sub-long v14, v10, v8

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    return v2

    .line 706
    .end local v10    # "t2":J
    .restart local v7    # "zipFile":Ljava/io/File;
    :cond_2
    const-string v12, "ZipUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Can not read from"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "!"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 709
    .end local v7    # "zipFile":Ljava/io/File;
    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    .line 686
    .restart local v7    # "zipFile":Ljava/io/File;
    :catch_1
    move-exception v12

    goto/16 :goto_0

    .line 684
    :catch_2
    move-exception v12

    goto/16 :goto_0
.end method

.method private static UnzipSpecialABI_Libs(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "zf"    # Ljava/util/zip/ZipFile;
    .param p1, "strDataDataLib"    # Ljava/lang/String;
    .param p2, "targetABI"    # Ljava/lang/String;

    .prologue
    .line 627
    const-string v6, "ZipUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UnzipSpecialABI_Libs in, targetABI = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const/4 v2, 0x0

    .line 630
    .local v2, "bRet":Z
    :try_start_0
    invoke-static {p0, p2}, Lcom/lenovo/scg/common/utils/file/ZipUtils;->getFullPathUnderlib(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 631
    .local v4, "listLibs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 632
    .local v5, "nLibs":I
    if-lez v5, :cond_2

    .line 633
    const/4 v1, 0x0

    .line 634
    .local v1, "PathDst":Ljava/lang/String;
    const-string v6, ""

    if-eq p2, v6, :cond_0

    .line 635
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 640
    :goto_0
    invoke-static {v1}, Lcom/lenovo/scg/common/utils/file/ZipUtils;->MakeDirIfNeed(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 641
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v5, :cond_1

    .line 642
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/lenovo/scg/common/utils/file/ZipUtils;->getSoNameOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 643
    .local v0, "NameDst":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {p0, v6, v1, v0}, Lcom/lenovo/scg/common/utils/file/ZipUtils;->upZipSelectedFile(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 641
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 637
    .end local v0    # "NameDst":Ljava/lang/String;
    .end local v3    # "i":I
    :cond_0
    move-object v1, p1

    goto :goto_0

    .line 645
    .restart local v3    # "i":I
    :cond_1
    const/4 v2, 0x1

    .line 653
    .end local v1    # "PathDst":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "listLibs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "nLibs":I
    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    const-string v6, "ZipUtils"

    const-string v7, "UnzipSpecialABI_Libs out. success"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :goto_3
    return v2

    .line 654
    :cond_3
    const-string v6, "ZipUtils"

    const-string v7, "UnzipSpecialABI_Libs out. failed"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 650
    :catch_0
    move-exception v6

    goto :goto_2

    .line 648
    :catch_1
    move-exception v6

    goto :goto_2
.end method

.method static getABIDirsUnderLib(Ljava/util/zip/ZipFile;)Ljava/util/ArrayList;
    .locals 11
    .param p0, "zf"    # Ljava/util/zip/ZipFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipFile;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 356
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 358
    .local v3, "entryNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 360
    .local v1, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 361
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 362
    .local v2, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "lib/.*\\.so"

    invoke-virtual {v9, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 363
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 364
    .local v7, "nStart":I
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 365
    .local v5, "nEnd":I
    if-le v5, v7, :cond_3

    .line 366
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v9, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 367
    .local v8, "strTargetABI":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 368
    .local v6, "nNum":I
    const/4 v0, 0x1

    .line 369
    .local v0, "bNew":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v6, :cond_1

    .line 370
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 371
    const/4 v0, 0x0

    .line 376
    :cond_1
    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 369
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 380
    .end local v0    # "bNew":Z
    .end local v4    # "i":I
    .end local v6    # "nNum":I
    .end local v8    # "strTargetABI":Ljava/lang/String;
    :cond_3
    const-string v9, ""

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    .end local v5    # "nEnd":I
    .end local v7    # "nStart":I
    :cond_4
    return-object v3
.end method

.method public static getEntriesNames(Ljava/util/zip/ZipFile;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "zf"    # Ljava/util/zip/ZipFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipFile;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 340
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 342
    .local v2, "entryNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 344
    .local v0, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 346
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 348
    .local v1, "entry":Ljava/util/zip/ZipEntry;
    new-instance v3, Ljava/lang/String;

    invoke-static {v1}, Lcom/lenovo/scg/common/utils/file/ZipUtils;->getEntryName(Ljava/util/zip/ZipEntry;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "GB2312"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const-string v5, "8859_1"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 352
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    :cond_0
    return-object v2
.end method

.method public static getEntryComment(Ljava/util/zip/ZipEntry;)Ljava/lang/String;
    .locals 3
    .param p0, "entry"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 504
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getComment()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GB2312"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "8859_1"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static getEntryName(Ljava/util/zip/ZipEntry;)Ljava/lang/String;
    .locals 3
    .param p0, "entry"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 523
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GB2312"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "8859_1"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method private static getFullPathUnderlib(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "zf"    # Ljava/util/zip/ZipFile;
    .param p1, "targetABI"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipFile;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 390
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 392
    .local v2, "entryNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 394
    .local v0, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 395
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 396
    .local v1, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lib/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/.*\\.so"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 397
    new-instance v3, Ljava/lang/String;

    invoke-static {v1}, Lcom/lenovo/scg/common/utils/file/ZipUtils;->getEntryName(Ljava/util/zip/ZipEntry;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "GB2312"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const-string v5, "8859_1"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 401
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    :cond_1
    return-object v2
.end method

.method private static getSoNameOnly(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "pathName"    # Ljava/lang/String;

    .prologue
    .line 405
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 406
    .local v0, "index":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static unzip(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 11
    .param p0, "zipFileStream"    # Ljava/io/InputStream;
    .param p1, "outputDirectory"    # Ljava/lang/String;

    .prologue
    .line 110
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 113
    new-instance v5, Ljava/util/zip/ZipInputStream;

    invoke-direct {v5, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 118
    .local v5, "in":Ljava/util/zip/ZipInputStream;
    :try_start_0
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .local v2, "entry":Ljava/util/zip/ZipEntry;
    move-object v4, v3

    .line 119
    .end local v3    # "file":Ljava/io/File;
    .local v4, "file":Ljava/io/File;
    :goto_0
    if-eqz v2, :cond_2

    .line 121
    :try_start_1
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 122
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    .line 123
    .local v6, "name":Ljava/lang/String;
    const/4 v9, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 125
    new-instance v3, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 126
    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 143
    .end local v6    # "name":Ljava/lang/String;
    :goto_1
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v2

    move-object v4, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    goto :goto_0

    .line 129
    :cond_0
    :try_start_3
    new-instance v3, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 130
    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    :try_start_4
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 131
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 133
    .local v7, "out":Ljava/io/FileOutputStream;
    const/high16 v9, 0x100000

    :try_start_5
    new-array v0, v9, [B

    .line 135
    .local v0, "buffer":[B
    :goto_2
    invoke-virtual {v5, v0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v8

    .local v8, "realLength":I
    if-lez v8, :cond_1

    .line 136
    const/4 v9, 0x0

    invoke-virtual {v7, v0, v9, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 139
    .end local v0    # "buffer":[B
    .end local v8    # "realLength":I
    :catchall_0
    move-exception v9

    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    throw v9
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 146
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    .end local v7    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 147
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 152
    :try_start_8
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 157
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_4
    return-void

    .line 139
    .restart local v0    # "buffer":[B
    .restart local v2    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    .restart local v8    # "realLength":I
    :cond_1
    :try_start_9
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_1

    .line 148
    .end local v0    # "buffer":[B
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    .end local v7    # "out":Ljava/io/FileOutputStream;
    .end local v8    # "realLength":I
    :catch_1
    move-exception v1

    .line 149
    .local v1, "e":Ljava/io/IOException;
    :goto_5
    :try_start_a
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 152
    :try_start_b
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_4

    .line 153
    :catch_2
    move-exception v1

    .line 154
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 152
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "file":Ljava/io/File;
    .restart local v2    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v4    # "file":Ljava/io/File;
    :cond_2
    :try_start_c
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    move-object v3, v4

    .line 155
    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto :goto_4

    .line 153
    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    :catch_3
    move-exception v1

    .line 154
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 156
    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto :goto_4

    .line 153
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    .local v1, "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v1

    .line 154
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 151
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v9

    .line 152
    :goto_6
    :try_start_d
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    .line 155
    :goto_7
    throw v9

    .line 153
    :catch_5
    move-exception v1

    .line 154
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 151
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "file":Ljava/io/File;
    .restart local v2    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v4    # "file":Ljava/io/File;
    :catchall_2
    move-exception v9

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto :goto_6

    .line 148
    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    :catch_6
    move-exception v1

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto :goto_5

    .line 146
    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    :catch_7
    move-exception v1

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto :goto_3
.end method

.method public static upZipFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 14
    .param p0, "zipFile"    # Ljava/io/File;
    .param p1, "folderPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    .local v1, "desDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_0

    .line 178
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 182
    :cond_0
    new-instance v11, Ljava/util/zip/ZipFile;

    invoke-direct {v11, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 184
    .local v11, "zf":Ljava/util/zip/ZipFile;
    invoke-virtual {v11}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .local v3, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 186
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    .line 188
    .local v4, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v11, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    .line 190
    .local v6, "in":Ljava/io/InputStream;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 192
    .local v9, "str":Ljava/lang/String;
    new-instance v10, Ljava/lang/String;

    const-string v12, "8859_1"

    invoke-virtual {v9, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    const-string v13, "GB2312"

    invoke-direct {v10, v12, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 194
    .end local v9    # "str":Ljava/lang/String;
    .local v10, "str":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 196
    .local v2, "desFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_2

    .line 198
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 200
    .local v5, "fileParentDir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_1

    .line 202
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 206
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 210
    .end local v5    # "fileParentDir":Ljava/io/File;
    :cond_2
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 212
    .local v7, "out":Ljava/io/OutputStream;
    const/high16 v12, 0x100000

    new-array v0, v12, [B

    .line 216
    .local v0, "buffer":[B
    :goto_1
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .local v8, "realLength":I
    if-lez v8, :cond_3

    .line 218
    const/4 v12, 0x0

    invoke-virtual {v7, v0, v12, v8}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 222
    :cond_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 224
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    goto :goto_0

    .line 228
    .end local v0    # "buffer":[B
    .end local v2    # "desFile":Ljava/io/File;
    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    .end local v6    # "in":Ljava/io/InputStream;
    .end local v7    # "out":Ljava/io/OutputStream;
    .end local v8    # "realLength":I
    .end local v10    # "str":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public static upZipSelectedFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 17
    .param p0, "zipFile"    # Ljava/io/File;
    .param p1, "folderPath"    # Ljava/lang/String;
    .param p2, "nameContains"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v6, "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 255
    .local v2, "desDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_0

    .line 257
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 261
    :cond_0
    new-instance v13, Ljava/util/zip/ZipFile;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 263
    .local v13, "zf":Ljava/util/zip/ZipFile;
    invoke-virtual {v13}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    .local v4, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 265
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    .line 267
    .local v5, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 269
    invoke-virtual {v13, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v8

    .line 271
    .local v8, "in":Ljava/io/InputStream;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 273
    .local v11, "str":Ljava/lang/String;
    const-string v14, "ZipUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "str = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    new-instance v12, Ljava/lang/String;

    const-string v14, "8859_1"

    invoke-virtual {v11, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    const-string v15, "GB2312"

    invoke-direct {v12, v14, v15}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 281
    .end local v11    # "str":Ljava/lang/String;
    .local v12, "str":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 283
    .local v3, "desFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_3

    .line 285
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    .line 287
    .local v7, "fileParentDir":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_2

    .line 289
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 293
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 297
    .end local v7    # "fileParentDir":Ljava/io/File;
    :cond_3
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 299
    .local v9, "out":Ljava/io/OutputStream;
    const/high16 v14, 0x100000

    new-array v1, v14, [B

    .line 303
    .local v1, "buffer":[B
    :goto_1
    invoke-virtual {v8, v1}, Ljava/io/InputStream;->read([B)I

    move-result v10

    .local v10, "realLength":I
    if-lez v10, :cond_4

    .line 305
    const/4 v14, 0x0

    invoke-virtual {v9, v1, v14, v10}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 309
    :cond_4
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 311
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 313
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 319
    .end local v1    # "buffer":[B
    .end local v3    # "desFile":Ljava/io/File;
    .end local v5    # "entry":Ljava/util/zip/ZipEntry;
    .end local v8    # "in":Ljava/io/InputStream;
    .end local v9    # "out":Ljava/io/OutputStream;
    .end local v10    # "realLength":I
    .end local v12    # "str":Ljava/lang/String;
    :cond_5
    return-object v6
.end method

.method public static upZipSelectedFile(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 16
    .param p0, "zf"    # Ljava/util/zip/ZipFile;
    .param p1, "PathNameSrc"    # Ljava/lang/String;
    .param p2, "PathDst"    # Ljava/lang/String;
    .param p3, "NameDst"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipFile;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 412
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 413
    .local v6, "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 415
    .local v2, "desDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_0

    .line 416
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 419
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    .local v4, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 420
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    .line 422
    .local v5, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 423
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v8

    .line 424
    .local v8, "in":Ljava/io/InputStream;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 425
    .local v11, "str":Ljava/lang/String;
    const-string v13, "ZipUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "str = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    new-instance v12, Ljava/lang/String;

    const-string v13, "8859_1"

    invoke-virtual {v11, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    const-string v14, "GB2312"

    invoke-direct {v12, v13, v14}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 432
    .end local v11    # "str":Ljava/lang/String;
    .local v12, "str":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 434
    .local v3, "desFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_3

    .line 435
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    .line 437
    .local v7, "fileParentDir":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_2

    .line 438
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 441
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 444
    .end local v7    # "fileParentDir":Ljava/io/File;
    :cond_3
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 446
    .local v9, "out":Ljava/io/OutputStream;
    const/high16 v13, 0x100000

    new-array v1, v13, [B

    .line 450
    .local v1, "buffer":[B
    :goto_1
    invoke-virtual {v8, v1}, Ljava/io/InputStream;->read([B)I

    move-result v10

    .local v10, "realLength":I
    if-lez v10, :cond_4

    .line 451
    const/4 v13, 0x0

    invoke-virtual {v9, v1, v13, v10}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 454
    :cond_4
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 456
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 458
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 462
    .end local v1    # "buffer":[B
    .end local v3    # "desFile":Ljava/io/File;
    .end local v5    # "entry":Ljava/util/zip/ZipEntry;
    .end local v8    # "in":Ljava/io/InputStream;
    .end local v9    # "out":Ljava/io/OutputStream;
    .end local v10    # "realLength":I
    .end local v12    # "str":Ljava/lang/String;
    :cond_5
    return-object v6
.end method

.method private static zipFile(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V
    .locals 12
    .param p0, "resFile"    # Ljava/io/File;
    .param p1, "zipout"    # Ljava/util/zip/ZipOutputStream;
    .param p2, "rootpath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v11, 0x100000

    .line 548
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_0

    const-string v9, ""

    :goto_0
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 552
    new-instance v8, Ljava/lang/String;

    const-string v9, "8859_1"

    invoke-virtual {p2, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    const-string v10, "GB2312"

    invoke-direct {v8, v9, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 554
    .end local p2    # "rootpath":Ljava/lang/String;
    .local v8, "rootpath":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 556
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 558
    .local v3, "fileList":[Ljava/io/File;
    move-object v0, v3

    .local v0, "arr$":[Ljava/io/File;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v6, :cond_3

    aget-object v2, v0, v4

    .line 560
    .local v2, "file":Ljava/io/File;
    invoke-static {v2, p1, v8}, Lcom/lenovo/scg/common/utils/file/ZipUtils;->zipFile(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V

    .line 558
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 548
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fileList":[Ljava/io/File;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .end local v8    # "rootpath":Ljava/lang/String;
    .restart local p2    # "rootpath":Ljava/lang/String;
    :cond_0
    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    goto :goto_0

    .line 566
    .end local p2    # "rootpath":Ljava/lang/String;
    .restart local v8    # "rootpath":Ljava/lang/String;
    :cond_1
    new-array v1, v11, [B

    .line 568
    .local v1, "buffer":[B
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v9, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 572
    .local v5, "in":Ljava/io/BufferedInputStream;
    new-instance v9, Ljava/util/zip/ZipEntry;

    invoke-direct {v9, v8}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v9}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 576
    :goto_2
    invoke-virtual {v5, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    .local v7, "realLength":I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_2

    .line 578
    const/4 v9, 0x0

    invoke-virtual {p1, v1, v9, v7}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_2

    .line 582
    :cond_2
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 584
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 586
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 590
    .end local v1    # "buffer":[B
    .end local v5    # "in":Ljava/io/BufferedInputStream;
    .end local v7    # "realLength":I
    :cond_3
    return-void
.end method

.method public static zipFiles(Ljava/util/Collection;Ljava/io/File;)V
    .locals 6
    .param p1, "zipFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "resFileList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/File;>;"
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/high16 v5, 0x100000

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v2, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 62
    .local v2, "zipout":Ljava/util/zip/ZipOutputStream;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 64
    .local v1, "resFile":Ljava/io/File;
    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/lenovo/scg/common/utils/file/ZipUtils;->zipFile(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    .end local v1    # "resFile":Ljava/io/File;
    :cond_0
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 70
    return-void
.end method

.method public static zipFiles(Ljava/util/Collection;Ljava/io/File;Ljava/lang/String;)V
    .locals 6
    .param p1, "zipFile"    # Ljava/io/File;
    .param p2, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "resFileList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/File;>;"
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/high16 v5, 0x100000

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v2, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 95
    .local v2, "zipout":Ljava/util/zip/ZipOutputStream;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 97
    .local v1, "resFile":Ljava/io/File;
    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/lenovo/scg/common/utils/file/ZipUtils;->zipFile(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    .end local v1    # "resFile":Ljava/io/File;
    :cond_0
    invoke-virtual {v2, p2}, Ljava/util/zip/ZipOutputStream;->setComment(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 105
    return-void
.end method
