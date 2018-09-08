# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Course.create(
    name: 'Wine & Spirits',
    description: 'Our wine and spirits programmes provide training with specific focus in various alcoholic beverages in order to best appreciate and serve them. Courses range from initiation modules to Food and Wine Pairing to Wine Management.',
    total_class_hours: 350)

    Course.create(name: 'Gourmet & Short Courses', description: 'For beginners, gourmet enthusiasts or those wanting to be the best house party host, a wide range of courses have been designed to satisfy the time and budget conscious. ', total_class_hours: 200)

    Course.create(name: 'Pastry & Confectionery', description: 'Discover the art of Pâtisserie. Courses range from specialized ateliers, basic through advanced levels of pastry and confectionary craft making, plated and boutique style desserts, world delicacies and precise decorating techniques.', total_class_hours: 400)

    Instructor.create(fname: 'Gordon', lname:'Ramsey', email: 'gramsey@lecordonnoir.com', password:'123', age: 52, salary: 125000, highest_edu: 'MS', is_admin: false)

    Instructor.create(fname: 'Janice', lname:'Wong', email: 'jwong@lecordonnoir.com', password:'123', age: 37, salary: 128000, highest_edu: 'MS', is_admin: false)

    Instructor.create(fname: 'Roble', lname:'Ali', email: 'rali@lecordonnoir.com', password:'123' ,age: 32, salary: 132000, highest_edu: 'MS', is_admin: false)
    
    Cohort.create(
        name:'Winter Cohort', 
        start_date: DateTime.new(2018,9,20),  
        end_date: DateTime.new(2018,12,20),
        course_id: 1,
        instructor_id: 1
    
    )

    Cohort.create(
        name:'Spring Cohort',
        start_date: DateTime.new(2019,3,20),
        end_date: DateTime.new(2019,6,20),
        course_id: 2,
        instructor_id: 2
    )

    Cohort.create(
        name:'Fall Cohort',
        start_date: DateTime.new(2019,8,20),
         end_date: DateTime.new(2019,11,20),
         course_id: 3,
         instructor_id: 3
    )


Student.create(
    fname: 'alexis', 
    lname: 'bailey', 
    email: 'abailey@lecordonnoir.com', 
    password: '1234', 
    age:'28', 
    cohort_id: 1, 
    is_admin: false
    )
    Student.create(
        fname: 'tasha', 
        lname: 'mack', 
        email: 'tmack@lecordonnoir.com', 
        password: '1234', 
        age:'31', 
        cohort_id: 1, 
        is_admin: false
        )
        Student.create(
            fname: 'jordan', 
            lname: 'bell', 
            email: 'jbell@lecordonnoir.com', 
            password: '1234', 
            age:'27', 
            cohort_id: 1, 
            is_admin: false
            )
            Student.create(
                fname: 'ashley', 
                lname: 'simone', 
                email: 'asimone@lecordonnoir.com', 
                password: '1234', 
                age:'30', 
                cohort_id: 2, 
                is_admin: false
                )
                Student.create(
                    fname: 'ryan', 
                    lname: 'williams', 
                    email: 'rwilliams@lecordonnoir.com', 
                    password: '1234', 
                    age:'33', 
                    cohort_id: 2, 
                    is_admin: false
                    )
                    Student.create(
                        fname: 'sam', 
                        lname: 'ward', 
                        email: 'sward@lecordonnoir.com', 
                        password: '1234', 
                        age:'32', 
                        cohort_id: 2, 
                        is_admin: false
                        )
                        Student.create(
                            fname: 'henry', 
                            lname: 'yan', 
                            email: 'hyan@lecordonnoir.com', 
                            password: '1234', 
                            age:'29', 
                            cohort_id: 3, 
                            is_admin: false
                            )

                            Student.create(
                                fname: 'fatima', 
                                lname: 'pierre', 
                                email: 'fbradley@lecordonnoir.com', 
                                password: '1234', 
                                age:'34', 
                                cohort_id: 3, 
                                is_admin: false
                                )
                                
                                Student.create(
                                    fname: 'riley', 
                                    lname: 'thompson', 
                                    email: '@lecordonnoir.com', 
                                    password: '1234', 
                                    age:'23', 
                                    cohort_id: 3, 
                                    is_admin: false
                                    )





# Admin.create(name: 'admin', email:'admin@lecordonnoir', password: '1234', is_admin: true)

User.create(email: 'test@example.com', password: 'password', admin: true)