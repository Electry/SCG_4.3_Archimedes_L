.class Lcom/baidu/location/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/h$a;
    }
.end annotation


# static fields
.field private static a:I

.field private static do:Ljava/lang/String;

.field private static for:F

.field private static if:Ljava/lang/String;

.field private static int:Ljava/util/ArrayList;

.field private static new:I

.field private static try:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "baidu_location_service"

    sput-object v0, Lcom/baidu/location/h;->if:Ljava/lang/String;

    const/16 v0, 0x64

    sput v0, Lcom/baidu/location/h;->a:I

    const-wide/16 v0, 0x40

    sput-wide v0, Lcom/baidu/location/h;->try:J

    const/16 v0, 0x40

    sput v0, Lcom/baidu/location/h;->new:I

    const v0, 0x43958000    # 299.0f

    sput v0, Lcom/baidu/location/h;->for:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/f;->aa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/juz.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/h;->do:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/h;->int:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(III)Ljava/lang/String;
    .locals 6

    invoke-static {p0, p1, p2}, Lcom/baidu/location/h;->if(III)Lcom/baidu/location/h$a;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{\"result\":{\"time\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/baidu/location/j;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\",\"error\":\"65\"},\"content\":{\"point\":{\"x\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"%f\",\"y\":\"%f\"},\"radius\":\"%d\"}}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Lcom/baidu/location/h$a;->if(Lcom/baidu/location/h$a;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Lcom/baidu/location/h$a;->int(Lcom/baidu/location/h$a;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v0}, Lcom/baidu/location/h$a;->a(Lcom/baidu/location/h$a;)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a()V
    .locals 13

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/baidu/location/h;->do:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lcom/baidu/location/h;->if:Ljava/lang/String;

    const-string v1, "locCache file does not exists..."

    invoke-static {v0, v1}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/baidu/location/h;->int:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/baidu/location/h;->int:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    sput-object v1, Lcom/baidu/location/h;->int:Ljava/util/ArrayList;

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/baidu/location/h;->int:Ljava/util/ArrayList;

    new-instance v11, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "rw"

    invoke-direct {v11, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-virtual {v11, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v12

    sget-object v0, Lcom/baidu/location/h;->if:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "size of loc cache is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v12, :cond_2

    sget-wide v2, Lcom/baidu/location/h;->try:J

    sget v1, Lcom/baidu/location/h;->new:I

    mul-int/2addr v1, v0

    int-to-long v4, v1

    add-long/2addr v2, v4

    invoke-virtual {v11, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->readFloat()F

    move-result v10

    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v4

    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->readDouble()D

    move-result-wide v6

    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v5

    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->readDouble()D

    move-result-wide v8

    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    new-instance v1, Lcom/baidu/location/h$a;

    invoke-direct/range {v1 .. v10}, Lcom/baidu/location/h$a;-><init>(IIIIDDF)V

    sget-object v2, Lcom/baidu/location/h;->int:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Lcom/baidu/location/c$a;DDF)V
    .locals 11

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/baidu/location/h;->for:F

    cmpg-float v0, p5, v0

    if-gez v0, :cond_3

    sget v10, Lcom/baidu/location/h;->for:F

    :goto_1
    iget v0, p0, Lcom/baidu/location/c$a;->if:I

    iget v1, p0, Lcom/baidu/location/c$a;->for:I

    iget v2, p0, Lcom/baidu/location/c$a;->try:I

    invoke-static {v0, v1, v2}, Lcom/baidu/location/h;->if(III)Lcom/baidu/location/h$a;

    move-result-object v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/baidu/location/h;->int:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/location/h;->int:Ljava/util/ArrayList;

    :cond_1
    new-instance v1, Lcom/baidu/location/h$a;

    iget v2, p0, Lcom/baidu/location/c$a;->for:I

    iget v3, p0, Lcom/baidu/location/c$a;->try:I

    iget v4, p0, Lcom/baidu/location/c$a;->do:I

    iget v5, p0, Lcom/baidu/location/c$a;->if:I

    move-wide v6, p1

    move-wide v8, p3

    invoke-direct/range {v1 .. v10}, Lcom/baidu/location/h$a;-><init>(IIIIDDF)V

    sget-object v0, Lcom/baidu/location/h;->int:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/baidu/location/h;->int:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lcom/baidu/location/h;->a:I

    if-le v0, v1, :cond_2

    sget-object v0, Lcom/baidu/location/h;->int:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    sget-object v0, Lcom/baidu/location/h;->if:Ljava/lang/String;

    const-string v1, "locCache add new cell info into loc cache ..."

    invoke-static {v0, v1}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move/from16 v10, p5

    goto :goto_1

    :cond_4
    invoke-static {v0, p1, p2}, Lcom/baidu/location/h$a;->a(Lcom/baidu/location/h$a;D)D

    invoke-static {v0, p3, p4}, Lcom/baidu/location/h$a;->if(Lcom/baidu/location/h$a;D)D

    invoke-static {v0, v10}, Lcom/baidu/location/h$a;->a(Lcom/baidu/location/h$a;F)F

    sget-object v0, Lcom/baidu/location/h;->if:Ljava/lang/String;

    const-string v1, "locCache update loc cache ..."

    invoke-static {v0, v1}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static do()V
    .locals 8

    const/4 v0, 0x0

    sget-object v1, Lcom/baidu/location/h;->int:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/baidu/location/h;->do:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/baidu/location/f;->aa:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    sget-object v3, Lcom/baidu/location/h;->if:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "locCache make dirs "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/baidu/location/h;->if:Ljava/lang/String;

    const-string v3, "locCache create loc cache file success ..."

    invoke-static {v2, v3}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "rw"

    invoke-direct {v3, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v1, v4, v6

    if-gez v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    :cond_3
    sget-object v1, Lcom/baidu/location/h;->int:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    move v1, v0

    :goto_1
    if-ltz v2, :cond_6

    sget-object v0, Lcom/baidu/location/h;->int:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/h$a;

    if-nez v0, :cond_5

    :goto_2
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/baidu/location/h;->if:Ljava/lang/String;

    const-string v1, "locCache create loc cache file failure ..."

    invoke-static {v0, v1}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_5
    :try_start_1
    sget-wide v4, Lcom/baidu/location/h;->try:J

    sget v6, Lcom/baidu/location/h;->new:I

    sget v7, Lcom/baidu/location/h;->a:I

    rem-int v7, v2, v7

    mul-int/2addr v6, v7

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-static {v0}, Lcom/baidu/location/h$a;->a(Lcom/baidu/location/h$a;)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/RandomAccessFile;->writeFloat(F)V

    invoke-static {v0}, Lcom/baidu/location/h$a;->for(Lcom/baidu/location/h$a;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-static {v0}, Lcom/baidu/location/h$a;->if(Lcom/baidu/location/h$a;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->writeDouble(D)V

    invoke-static {v0}, Lcom/baidu/location/h$a;->new(Lcom/baidu/location/h$a;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-static {v0}, Lcom/baidu/location/h$a;->int(Lcom/baidu/location/h$a;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->writeDouble(D)V

    invoke-static {v0}, Lcom/baidu/location/h$a;->do(Lcom/baidu/location/h$a;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-static {v0}, Lcom/baidu/location/h$a;->try(Lcom/baidu/location/h$a;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    sget-object v0, Lcom/baidu/location/h;->if:Ljava/lang/String;

    const-string v4, "add a new cell loc into file ..."

    invoke-static {v0, v4}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v3, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private static if(III)Lcom/baidu/location/h$a;
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    sget-object v0, Lcom/baidu/location/h;->int:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/location/h;->int:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/baidu/location/h;->a()V

    :cond_1
    sget-object v0, Lcom/baidu/location/h;->int:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/baidu/location/h;->int:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v2, :cond_4

    :cond_2
    move-object v0, v1

    :cond_3
    :goto_0
    return-object v0

    :cond_4
    sget-object v0, Lcom/baidu/location/h;->int:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_6

    sget-object v0, Lcom/baidu/location/h;->int:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/h$a;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p0, p1, p2}, Lcom/baidu/location/h$a;->a(III)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_3

    :cond_5
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

.method public static if()V
    .locals 0

    invoke-static {}, Lcom/baidu/location/h;->do()V

    return-void
.end method
