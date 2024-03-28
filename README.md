# Meta Kaggle and Trends in Data Science and Machine Learning

## Kaggle Insights: A Visual Journey through User and Competition Trends

### Authorship
| Role                         | Name                     | Affiliation         | Email                |
|------------------------------|--------------------------|---------------------|----------------------|
| Team Leader                  | Venkata Viswanath Chittilla | Indiana University | vchitti@iu.edu       |
| Designer/Human Computer Interaction                    | Srikeerthana Reddy Bandi | Indiana University | sribandi@iu.edu      |
| Programmer/Data Analyst                   | Dwarakamai Mannemuddu    | Indiana University | dwamanne@iu.edu      |
|  Programmer/Data Analyst  | Poojitha Mathi          | Indiana University | pmathi@iu.edu        |
| Programmer/Data Wrangler/Data Analyst   | Sai Sumanth Muvva        | Indiana University | saimuvva@iu.edu      |


### Description of Visualization Goal/Need

Visualization goals/needs for the "Kaggle Insights: A Visual Journey through User and Competition Trends" project are as follows:

- **User Engagement Analysis**: Showing the distribution of users across different tiers participating in competitions helps in profiling competition participants and gauging the level of expertise and experience present.
- **Competition Trend Tracking**: Visualizing historical trends of competition frequency over quarters aids in spotting seasonal patterns and shifts in competition dynamics.
- **Tag-Based Analysis**: Visualizations for competitions and kernels based on tags offer insights into the thematic preferences and interests of Kaggle participants.
- **Community Collaboration and Recognition**: Showcase user achievements such as competition rankings and user current rankings. Highlight community contributions and collaborations through visualizations.
- **Insights for Decision-Making**: Provide actionable insights derived from data analysis to support decision-making.

### Related Work

- Notebook1: [Meta Kaggle Analysis](https://www.kaggle.com/code/pridegoodmusic/meta-kaggle-analysis/notebook) - Presents a line chart visualization depicting counts of competitions over years.
- Notebook2: [Kaggle Metadata Analysis](https://www.kaggle.com/code/jonathanbouchet/kaggle-metadata-analysis/report#data-preparation-checks) - Presents a histogram visualization of the top owners of the most upvoted datasets in Kaggle.


## Dataset Overview  
The total files in the Meta Kaggle dataset are 32. We have pre-processed the data to the following files for our analysis:  

- UserAchievements.csv
- Submissions.csv
- Users.csv
- ForumMessages.csv
- Teams.csv
- UserFollowers.csv
- ForumMessageVotes.csv
- ForumTopics.csv
- KernelTags.csv
- Datasets.csv
- DatasetVersions.csv
- DatasetTags.csv
- Forums.csv
- Competitions.csv
- DatasetTaskSubmissions.csv
- DatasetTasks.csv
- UserOrganizations.csv
- Tags.csv
- Organizations.csv
- CompetitionTags.csv
- KernelLanguages.csv



## Data Dictionary  
### Competitions.csv
- **Id**: Unique identifier for each competition.
- **Title**: Name of the competition.
- **ForumId**: Identifier for the related forum.
- **OrganizationId**: Identifier for the organizing body.
- **Evaluation Algorithm Name**: Name of the algorithm used for evaluation.
- **MaxTeamSize**: Maximum allowed team size.
- **RewardType**: Type of reward offered.
- **RewardQuantity**: Quantity of the reward.
- **TotalCompetitors/Teams**: Number of competitors or teams.
- **TotalSubmissions**: Total submissions received.
- **EnabledDate**: Date when the competition was enabled.
- **DeadlineDate**: Submission deadline date.

### CompetitionTags.csv
- **Id**: Unique identifier.
- **CompetitionId**: Identifier for the competition.
- **TagId**: Identifier for the associated tag.

### Tags.csv
- **Id**: Unique identifier for each tag.
- **Name**: Name of the tag.
- **CompetitionCount**: Number of competitions associated with the tag.
- **DatasetCount**: Number of datasets associated with the tag.

### ForumTopics.csv
- **Id**: Unique identifier for each forum topic.
- **ForumId**: Identifier for the related forum.
- **KernelId**: Identifier for the related kernel.
- **TotalViews**: Total views of the topic.

### ForumMessages.csv
- **Id**: Unique identifier for each forum message.
- **ForumTopicId**: Identifier for the related forum topic.
- **PostUserId**: User ID of the poster.
- **Message**: Content of the message.

### ForumMessageVotes.csv
- **Id**: Unique identifier.
- **ForumMessageId**: Identifier for the related forum message.
- **FromUserId**: User ID of the voter.
- **ToUserId**: User ID of the message poster.

### Organizations.csv
- **Id**: Unique identifier for each organization.
- **Name**: Name of the organization.

### Users.csv
- **Id**: Unique identifier for each user.
- **UserName**: Username.
- **RegisterDate**: Date of registration.
- **PerformanceTier**: Performance tier of the user.

### UserOrganizations.csv
- **UserId**: Identifier for the user.
- **OrganizationId**: Identifier for the organization.

### UserFollowers.csv
- **UserId**: Identifier for the user.
- **FollowingUserId**: Identifier for the user being followed.

### UserAchievements.csv
- **UserId**: Identifier for the user.
- **AchievementType**: Type of achievement.
- **Points**: Points earned.
- **CurrentRanking**: Current ranking of the user.
- **HighestRanking**: Highest ranking achieved by the user.

### Teams.csv
- **Id**: Unique identifier for each team.
- **CompetitionId**: Identifier for the related competition.
- **TeamName**: Name of the team.
- **PublicLeaderboardRank**: Team's rank on the public leaderboard.
- **Medal**: Type of medal won, if any.

### TeamMemberships.csv
- **TeamId**: Identifier for the team.
- **UserId**: Identifier for the user.

### Submissions.csv
- **Id**: Unique identifier for each submission.
- **SubmittedUserId**: User ID of the submitter.
- **TeamId**: Identifier for the team.
- **PublicScoreLeaderboardDisplay**: Display score on the public leaderboard.
- **SubmissionDate**: Date of submission.
- **IsAfterDeadline**: Whether the submission was after the deadline.

### Datasets.csv
- **Id**: Unique identifier for each dataset.
- **CreatorUserId**: User ID of the creator.
- **OwnerOrganizationId**: Identifier for the owning organization.
- **ForumId**: Identifier for the related forum.
- **TotalViews**: Total views of the dataset.
- **TotalDownloads**: Total downloads of the dataset.
- **TotalVotes**: Total votes for the dataset.

### DatasetTags.csv
- **DatasetId**: Identifier for the dataset.
- **TagId**: Identifier for the tag.


#### Visualization Applied

1. **"Top 50 Users: A Deep Dive into Their Participated Competitions"**: Focuses on the competitions in which top-ranked users participated.
2. **"Exploring Participation Trends: Insights from Competition Submissions"**: Presents the total submissions and their dates across various competitions.
3. **Additional visualizations as applicable**

#### Key Insights Gained from Analysis/Visualization

- Analysis of the competitions in which top-ranked users participated revealed trends in community interests and emerging technologies.
- The exploration of participation trends showed an increase in submissions in certain quarters, indicating seasonal patterns in competition engagement.

#### Challenges and Opportunities

- Challenges include cleaning large tables to small ones by deleting and cleaning necessary rows and fields to ensure the data fits into Power BI without memory issues, given the cap limit of 1 GB.
- Opportunities lie in mastering Power BI tools, DAX, data modeling, and creating impactful visualizations.

#### Acknowledgements

(Thank people who provided data, tools, resources, or help.)

#### References

1. Passenger Screening Algorithm Challenge.  
   [https://www.kaggle.com/c/passenger-screening-algorithm-challenge](https://www.kaggle.com/c/passenger-screening-algorithm-challenge)

2. Zillow Prize: Zillow’s Home Value Prediction (Zestimate).  
   [https://www.kaggle.com/c/zillow-prize-1](https://www.kaggle.com/c/zillow-prize-1)

3. Ultrasound Nerve Segmentation.  
   [https://www.kaggle.com/c/ultrasound-nerve-segmentation](https://www.kaggle.com/c/ultrasound-nerve-segmentation)

4. Ouyang, W. et al. Analysis of the Human Protein Atlas Image Classification competition. Nat. Methods 16, 1254–1261 (2019).  
   [https://doi.org/10.1038/s41592-019-0658-6](https://doi.org/10.1038/s41592-019-0658-6)

5. Jain, Y., Godwin, L.L., Ju, Y. et al. Segmentation of human functional tissue units in support of a Human Reference Atlas. Commun Biol 6, 717 (2023).  
   [https://doi.org/10.1038/s42003-023-04848-5](https://doi.org/10.1038/s42003-023-04848-5)

6. Meta Kaggle Dataset.  
   [https://www.kaggle.com/datasets/kaggle/meta-kaggle](https://www.kaggle.com/datasets/kaggle/meta-kaggle)

7. About – HuBMAP Consortium.  
   [https://hubmapconsortium.org/about/](https://hubmapconsortium.org/about/)

8. HuBMAP - Hacking the Kidney.  
   [https://kaggle.com/c/hubmap-kidney-segmentation](https://kaggle.com/c/hubmap-kidney-segmentation)

9. HuBMAP - Hacking the Human Body.  
   [https://www.kaggle.com/competitions/hubmap-organ-segmentation](https://www.kaggle.com/competitions/hubmap-organ-segmentation)

10. Meta Kaggle Code Dataset:  
    [https://www.kaggle.com/datasets/kaggle/meta-kaggle-code](https://www.kaggle.com/datasets/kaggle/meta-kaggle-code)

11. Jain, Y., Godwin, L.L., Joshi, S. et al. Segmenting functional tissue units across human organs using community-driven development of generalizable machine learning algorithms. Nat Commun 14, 4656 (2023).  
    [https://doi.org/10.1038/s41467-023-40291-0](https://doi.org/10.1038/s41467-023-40291-0)


